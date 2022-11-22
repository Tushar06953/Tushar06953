#7
clear all;
close all;
clc;
pkg load image;


a = imread('pic4.jpg');
subplot(3,3,1);
imshow(a);
title("Original image");

a_img_noise= imnoise(a,'salt & pepper',0.02);
subplot(3,3,2);
imshow(a_img_noise);
title("Image with salt and pepper noise");

img_gaussian_noise = imnoise(a,'gaussian');
subplot(3,3,3);
imshow(img_gaussian_noise);
title("Image with gaussian noise");

#a
mefil=ones(3,3)/9;
img_restoration = imfilter(a_img_noise,mefil)  # using mean filter
subplot(3,3,4);
imshow(img_restoration);
title("Image restoration using mean filter");

#b
sigma = 3 ;
cutoff = ceil(3*sigma);
h=fspecial('gaussian', 2*cutoff+1, sigma);
img_noise_removed=imfilter(a_img_noise,h); #using gaussian filter
subplot(3,3,5);
imshow(img_noise_removed);
title("Salt & pepper noise removed using gaussian filter");

#c
mefilf=ones(3,3)/9;
img_gaussian_noise_removed = imfilter(img_gaussian_noise,mefilf)  # using mean filter
subplot(3,3,6);
imshow(img_gaussian_noise_removed);
title('Gaussian noise removed using harmonic mean filter');

#d
modifyJ=zeros(size(a_img_noise)+2);

B = zeros(size(a_img_noise));
for x=1:size(a_img_noise,1)
for y=1:size(a_img_noise,2)
modifyJ(x+1,y+1)=a_img_noise(x,y);
end
end
for i= 1:size(modifyJ,1)-2
for j=1:size(modifyJ,2)-2
window=zeros(9,1);
inc=1;
for x=1:3
for y=1:3
window(inc)=modifyJ(i+x-1,j+y-1);
inc=inc+1;
end
end
med=sort(window);
B(i,j)=med(5);

end
end
B = uint8(B);
subplot(3,3,7);
imshow(B);
title('Filtered Image with Median Filter');
