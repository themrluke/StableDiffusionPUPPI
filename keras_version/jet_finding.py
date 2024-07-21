import numpy as np

def find_local_maxima(img, neighborhood_size):
    img = img.numpy()
    num_events, height, width, _ = img.shape
    result_img = np.zeros_like(img)
    maxima_positions = []

    # Extend the image by wrapping around LHS and RHS
    extended_img = np.concatenate((img, img, img), axis=2)

    # Flatten the image and sort the pixel values in descending order along with their indices for all events
    flat_img = img.reshape(num_events, -1)
    sorted_indices = np.argsort(flat_img, axis=1)[:, ::-1]

    # Get the indices and pixel values of the brightest pixels for all events
    brightest_pixel_indices = sorted_indices[:, 0]
    brightest_pixel_values = flat_img[np.arange(num_events), brightest_pixel_indices]

    # Convert the flat indices back to 3D indices (height, width)
    brightest_pixel_coords = np.unravel_index(brightest_pixel_indices, (height, width))
    i_bright, j_bright = brightest_pixel_coords[0], brightest_pixel_coords[1]

    # Calculate the 3x3 neighborhood around the brightest pixels for all events
    neighborhood_indices = np.array([(i, j) for i in range(-1, 2) for j in range(-1, 2)])
    
    neighborhood_coords = np.stack(
        [i_bright[:, None] + neighborhood_indices[:, 0], 
         j_bright[:, None] + neighborhood_indices[:, 1]], axis=-1)

    # Ensure the neighborhood coordinates are within the bounds of the image
    valid_mask = (neighborhood_coords[:, :, 0] >= 0) & (neighborhood_coords[:, :, 0] < height) & \
                 (neighborhood_coords[:, :, 1] >= 0) & (neighborhood_coords[:, :, 1] < width)
    
    neighborhood_coords = neighborhood_coords[valid_mask].reshape(-1, 2)

    # Find the 2nd brightest pixel value not in the 3x3 neighborhood for all events
    second_brightest_pixel_values = np.zeros(num_events)
    for event in range(num_events):
        event_sorted_indices = sorted_indices[event]
        event_brightest_coords = set(map(tuple, neighborhood_coords))
        for idx in event_sorted_indices:
            coord = np.unravel_index(idx, (height, width))
            if coord not in event_brightest_coords:
                second_brightest_pixel_values[event] = flat_img[event, idx]
                break

    # Set the threshold for all events
    thresholds = 0.6 * second_brightest_pixel_values

    # Vectorized local maxima finding
    for i in range(height):
        for j in range(width):
            # Define the neighborhood bounds on the extended image
            start_i = max(0, i - neighborhood_size // 2)
            end_i = min(height, i + neighborhood_size // 2 + 1)
            start_j = j + width - neighborhood_size // 2
            end_j = j + width + neighborhood_size // 2 + 1

            if start_i >= end_i or start_j >= end_j:
                continue

            # Extract the neighborhood for all events
            neighborhood = extended_img[:, start_i:end_i, start_j:end_j, :]

            # Find the local maxima for all events simultaneously
            max_indices = np.argmax(neighborhood.reshape(num_events, -1), axis=1)
            max_coords = np.unravel_index(max_indices, (end_i - start_i, end_j - start_j))

            # Vectorized comparison for local maxima
            local_maxima_mask = (max_coords[0] == i - start_i) & (max_coords[1] == j + width - start_j) & (img[:, i, j, 0] >= thresholds)
            
            # Update result_img and maxima_positions
            if np.any(local_maxima_mask):
                result_img[local_maxima_mask, i, j, 0] = neighborhood[local_maxima_mask].sum(axis=(1, 2, 3))
                events_with_maxima = np.where(local_maxima_mask)[0]
                for event in events_with_maxima:
                    maxima_positions.append({'event': event, 'i': i, 'j': j, 'pixel_value': img[event, i, j, 0], 'sum_around_maxima': result_img[event, i, j, 0]})

    return result_img, maxima_positions

def find_matching_maxima(reference_maxima, test_maxima):
    matching_maxima = []

    for ref_maxima in reference_maxima:
        ref_event = ref_maxima['event']
        ref_position = (ref_maxima['i'], ref_maxima['j'])

        for test_maxima_entry in test_maxima:
            if test_maxima_entry['event'] != ref_event:
                continue

            test_position = (test_maxima_entry['i'], test_maxima_entry['j'])

            # Check if the positions match
            if ref_position == test_position:
                matching_maxima.append((ref_maxima, test_maxima_entry))
                break  # Break the inner loop, as we found a match

    return matching_maxima