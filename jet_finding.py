import numpy as np

def find_local_maxima(img, neighborhood_size=9):
    height, width = img.shape
    result_img = np.zeros_like(img)
    maxima_positions = []

    for i in range(height):
        for j in range(width):
            # Define the neighborhood bounds
            start_i = max(0, i - neighborhood_size // 2)
            end_i = min(height, i + neighborhood_size // 2 + 1)
            start_j = max(0, j - neighborhood_size // 2)
            end_j = min(width, j + neighborhood_size // 2 + 1)

            # Extract the neighborhood
            neighborhood = img[start_i:end_i, start_j:end_j].numpy()

            # Check if the current pixel is a local maximum
            max_index = np.unravel_index(np.argmax(neighborhood), neighborhood.shape)

            # Check if the current pixel is a local maximum
            if max_index == (i - start_i, j - start_j) and img[i,j] >= 5.0/16:
                result_img[i, j] = np.sum(neighborhood)
                maxima_positions.append({'i': i, 'j': j, 'pixel_value': img[i, j], 'sum_around_maxima': np.sum(neighborhood)})


    return result_img, maxima_positions

def find_matching_maxima(reference_maxima, test_maxima):
    matching_maxima = []

    for ref_maxima in reference_maxima:
        ref_position = (ref_maxima['i'], ref_maxima['j'])

        for test_maxima_entry in test_maxima:
            test_position = (test_maxima_entry['i'], test_maxima_entry['j'])

            # Check if the positions match
            if ref_position == test_position:
                matching_maxima.append((ref_maxima, test_maxima_entry))
                break  # Break the inner loop, as we found a match

    return matching_maxima