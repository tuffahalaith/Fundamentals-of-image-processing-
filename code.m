%Task no.1 
% Display the color image
colorimage=imread('cmyk.jpeg');
figure(1);
imshow(colorimage);
title('orginal image')

%Task no.2 
%Display the magenta layer for the image
magentalayer=colorimage(:,:,2);
figure(2);
imshow(magentalayer);
title('magenta layer')

%Task no.3 
%Display the yellow layer for the image
yellowlayer=colorimage(:,:,3);
figure(3);
imshow(yellowlayer);
title(' yellow layer')


%Task no.4 
%Display the gray scale for the image
abdomen= imread('abdomen.jpeg');
gray= rgb2gray(abdomen);
figure(4);
imshow(gray);
title('Grayscale Image');

%Task no.5 
%Resize the grayscale image to 70% of the original size using spline, interp2
[height, width] = size(gray);
newheight = round(height * 0.7);
newwidth = round(width * 0.7);
[X, Y] = meshgrid(1:width, 1:height);
[X_resized, Y_resized] = meshgrid(1:newwidth, 1:newheight);
Imageresized = interp2(X, Y, double(gray), X_resized, Y_resized, 'spline');
figure(5);
imshow(Imageresized);
title('Resized Image');

%Task no.6 
%The gamma-correction of the inverse of the resized image using gamma=4
gamma = 4;
I_inverse = gamma * (Imageresized.^(-1));
figure(6);
subplot(1, 2, 1);
imshow(Imageresized);
title('Resized Image');
subplot(1, 2, 2);
imshow(I_inverse);
title('Corrected Image');

%Task no.7
%Plot the overall transformation curve implemented in the previous step (gamma & inverse)
figure(7);
plot(Imageresized(:), I_inverse(:), '.');
xlabel('Resized Image');
ylabel('Corrected Image');
title('Overall Transformation Curve');

%Task no.8
%Gray-level slicing for the resized image
I = gray;
region = I(100:200, 100:200);
L = 256;
threshold = 128;
region_sliced = region;
region_sliced(region >= threshold) = L - 1;
figure(8);
imshow(region_sliced, [0, L-1]);
colormap gray;
title('Sliced Image');

%Task no.9
%plot the transformation curve immplemented in the previous step 
figure(9);
plot(region(:), region_sliced(:), '.');
xlabel('Original Image');
ylabel('Sliced Image');
title('Transformation Curve');

%Task no.10
%the resized image with the seventh plane set to zero. 
L = 256;
Imageresized(mod(Imageresized, L/8) == (L/8) - 1) = 0;
figure;
imshow(Imageresized, [0, L-1]);
colormap gray;
title('Resized Image with Seventh Plane Set to Zero');


