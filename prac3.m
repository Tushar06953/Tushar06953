

Code:

clear all;
close all;
clc;
pkg load image
img1 = imread('fgimage.jpg');
g = size(img1);
img2 = imread('patternimage.jpg');
img2 = imresize(img2,[g(1),g(2)]);
z = imadd(img1, img2);
imshow(z);
title('Addition of Two Images');



b.

Code:

clear all;
close all;
clc;
pkg load image
img1 = imread('fgimage.jpg');
g = size(img1);
img2 = imread('patternimage.jpg');
img2 = imresize(img2,[g(1),g(2)]);
z = imsubtract(img1, img2);
imshow(z);
title('Subtraction of Two Images');



c.

Code:

clear all;
close all;
clc;
pkg load image
img1 = imread('fgimage.jpg');
Mean = mean2(img1)

