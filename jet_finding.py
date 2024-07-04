import numpy as np


def find_local_maxima(img, neighborhood_size):
    height, width = img.shape
    result_img = np.zeros_like(img)
    maxima_positions = []

    # Extend the image by wrapping around LHS and RHS
    extended_img = np.concatenate((img, img, img), axis=1)

    # # Flatten the image and sort the pixel values in descending order
    # sorted_pixels = np.sort(img.flatten())[::-1]
    
    # # Get the ith highest pixel value and times by a scalar
    # threshold = 0.6 * sorted_pixels[1]

    # Flatten the image and sort the pixel values in descending order along with their indices
    sorted_pixels_with_indices = sorted(
        [(pixel, idx) for idx, pixel in np.ndenumerate(img)], 
        key=lambda x: x[0], 
        reverse=True
    )

    # Get the brightest pixel location
    brightest_pixel_value, brightest_pixel_index = sorted_pixels_with_indices[0]

    # Calculate the 3x3 neighborhood around the brightest pixel
    i_bright, j_bright = brightest_pixel_index
    neighborhood_indices = [
        (i, j) for i in range(i_bright - 1, i_bright + 2) 
        for j in range(j_bright - 1, j_bright + 2)
        if 0 <= i < height and 0 <= j < width
    ]

    # Find the 2nd brightest pixel value not in the 3x3 neighborhood
    for pixel_value, (i, j) in sorted_pixels_with_indices:
        if (i, j) not in neighborhood_indices:
            second_brightest_pixel_value = pixel_value
            break

    # Set the threshold
    threshold = 0.5 * second_brightest_pixel_value

    for i in range(height):
        for j in range(width):
            # Define the neighborhood bounds on the extended image
            start_i = max(0, i - neighborhood_size // 2)
            end_i = min(height, i + neighborhood_size // 2 + 1)
            start_j = j + width - neighborhood_size // 2
            end_j = j + width + neighborhood_size // 2 + 1

            # Extract the neighborhood
            neighborhood = extended_img[start_i:end_i, start_j:end_j]

            # Check if the current pixel is a local maximum
            max_index = np.unravel_index(np.argmax(neighborhood), neighborhood.shape)

            # Check if the current pixel is a local maximum
            # Changed j index limits to account for new width index of extended image
            if max_index == (i - start_i, j + width - start_j) and img[i,j] >= threshold: # Change the last number here for minimum energy to be regarded as a Jet
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