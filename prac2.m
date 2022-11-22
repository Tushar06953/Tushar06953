a. Obtain Negative image

a=imread('fgimage.jpg');
d=255-a;
d=a;
for row=1:size(a,1)
for col=1:size(a,2)
d(row,col,:)=255-a(row,col,:);
end
end
subplot(1,2,1)
imshow(a);
title('original');
subplot(1,2,2)
imshow(d);
title('negative');



b. Obtain Flip image


a=imread('fgimage.jpg');
img = imread('fgimage.jpg');
[x, y, z] = size(img);
for plane = 1 : z
len = x;
for i = 1 : x
for j = 1 : y
if i < x/2
temp = img(i, j, plane);
img(i, j, plane) = img(len, j, plane);
img(len, j, plane) = temp;
end
end
len = len - 1;
end
end
subplot(1,2,1);
imshow(a)
subplot(1,2,2);
imshow(img);
title('Vertically flipped image');



c. Thresholding


pkg load image
x=im2double(rgb2gray(imread('fgimage.jpg')));
subplot(1,2,1);
y=imread('fgimage.jpg');
imshow(y);
title('Original');
T=graythresh(x);
[row col]=size(x);
IM_BW=zeros(row,col);
for i=1:row
for j=1:col
if(x(i,j)>T)
IM_BW(i,j)=1;
else
IM_BW(i,j)=0;
end
end
end
subplot(1,2,2);
imshow(IM_BW);
title('Threshold image')




d. Contrast stretching

pkg load image
X = imread('fgimage.jpg');
subplot(1,2,1);
imshow(X);
title('Original Image')
a = min(X(:));
b = max(X(:));
Y= (X-a).*(255/(b-a));
subplot(1,2,2);
imshow(Y);
title('Contrast Streached Image')

