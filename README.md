# Image Processing with MATLAB

This repository contains a MATLAB script for performing various image processing tasks. It demonstrates foundational techniques in image manipulation, including color channel extraction, grayscale conversion, image resizing, gamma correction, gray-level slicing, and bit-plane manipulation. 

## Tasks Overview

### Task 1: Display the Original Image
- Loads and displays a CMYK color image (`CMYK.png`).
  
### Task 2: Display the Magenta Layer
- Extracts and displays the magenta layer from the color image.

### Task 3: Display the Yellow Layer
- Extracts and displays the yellow layer from the color image.

### Task 4: Convert to Grayscale
- Loads a second image (`abdomen.jpeg`), converts it to grayscale, and displays the result.

### Task 5: Resize the Grayscale Image
- Resizes the grayscale image to 70% of its original dimensions using spline interpolation with `interp2`.

### Task 6: Gamma Correction on the Inverse of the Resized Image
- Applies gamma correction (γ = 4) on the inverse of the resized image. 
- Displays the original resized image and the gamma-corrected image side-by-side.

### Task 7: Plot Transformation Curve for Gamma Correction
- Plots the transformation curve used in the gamma correction to visualize the effect of the intensity transformation.

### Task 8: Gray-Level Slicing
- Extracts a region from the grayscale image and applies gray-level slicing to highlight pixels above a threshold intensity.

### Task 9: Transformation Curve for Gray-Level Slicing
- Plots the transformation curve for the gray-level slicing, showing how pixel values were altered.

### Task 10: Bit-Plane Manipulation
- Sets the seventh bit-plane of the resized image to zero, demonstrating the effect of removing specific intensity information.

## Requirements
- MATLAB R2020a or later
- Images: `CMYK.png` (color image) and `abdomen.jpeg` (grayscale image)

## Usage
1. Clone this repository.
2. Place the images `CMYK.png` and `abdomen.jpeg` in the same directory as the script.
3. Run the script in MATLAB to execute all tasks and view the results.

## Output
Each task displays its output in a separate figure window, illustrating the effects of different image processing techniques. 

## License
This project is open-source and available under the MIT License. See the `LICENSE` file for more details.
