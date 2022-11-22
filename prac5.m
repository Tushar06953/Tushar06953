clear all;
close all;
clc;
pkg load image;

A=imread('download.jpg');
subplot(1,3,1);
imshow(A);
%Specify the bin range[0 255]
bin=255;
%Find the histogram of the image.
Val=reshape(A,[],1);
Val=double(Val);
I=hist(Val,0:bin);
%Divide the result by number of pixels
Output=I/numel(A);
%Calculate the Cumlative sum
CSum=cumsum(Output);
%Perform the transformation S=T(R) where S and R in the range [ 0 1]
HIm=CSum(A+1);
%Convert the image into uint8
HIm=uint8(HIm*bin);
subplot(1,3,2);
imshow(HIm);
subplot(1,3,3);
imhist(A);






clear all;
close all;
clc;
pkg load image;

GIm=imread('download.jpg');
numofpixels=size(GIm,1)*size(GIm,2);
figure,imshow(GIm);
title('Original Image');
HIm=uint8(zeros(size(GIm,1),size(GIm,2)));freq=zeros(256,1);
probf=zeros(256,1);
probc=zeros(256,1);
cum=zeros(256,1);
output=zeros(256,1);
%freq counts the occurrence of each pixel value.
%The probability of each occurrence is calculated by probf.
for i=1:size(GIm,1)
for j=1:size(GIm,2)
value=GIm(i,j);
freq(value+1)=freq(value+1)+1;
probf(value+1)=freq(value+1)/numofpixels;
end
end
sum=0;no_bins=255;
%The cumulative distribution probability is calculated.
for i=1:size(probf)
sum=sum+freq(i);
cum(i)=sum;
probc(i)=cum(i)/numofpixels;
output(i)=round(probc(i)*no_bins);
end
for i=1:size(GIm,1)
for j=1:size(GIm,2)
HIm(i,j)=output(GIm(i,j)+1);
end
end
figure,imshow(HIm);
title('Histogram equalization');


