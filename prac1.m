#	Read and display image in SCILAB/MATLAB

clc
clear all
close all

a = imread("dhankarimg.jpg");
figure;
imshow(a);




#Resize given image

clc
clear all
close all

a = imread("cheems.jpg");
 subplot(1,2,1)
 imshow(a)
title('color img');

c= imresize(a,[500,400]);
 subplot(1,2,2);
 imshow(c)
title('img after resize');


#Separate color image in three R G & B planes

clc
clear all
close all
a = imread("cheems.jpg");
 subplot(2,3,1);
 imshow(a);
title("orginal image");

Red=a;
Red(:,:,2) =0;
Red(:,:,3) =0;
subplot(2,3,2);
 imshow(Red);
 title("R Plane");

Green=a;
Green(:,:,1) =0;
Green(:,:,3) =0;
subplot(2,3,3);
imshow(Green);
 title("G Plane")

Blue=a;
 Blue(:,:,1) =0;
Blue(:,:,2) =0;
subplot(2,3,4);
 imshow(Blue);
 title("B Plane")

#	Create color image using R, G and B three separate planes



clc
clear all
close all

a = imread("cheems.jpg");
subplot(2,3,1);
 imshow(a);
title("orginal image");

Red=a;
Red(:,:,2) =0;
Red(:,:,3) =0;
subplot(2,3,2);
imshow(Red);
title("R Plane");

Green=a; Green(:,:,1) =0;
Green(:,:,3) =0;
subplot(2,3,3);
imshow(Green);
title("G Plane")

Blue=a;
 Blue(:,:,1) =0;
Blue(:,:,2) =0;
subplot(2,3,4);
 imshow(Blue);
 title("B Plane")

Red = a(:,:,1);
Green = a(:,:,2);
Blue = a(:,:,3);
im = cat(3,Red,Green,Blue);
 isequal(a,im);
subplot(2,3,5);
 imshow(im)
title("img after cobining r g and b plane");


#Convert given color image into gray-scale image


clc
 clear all
 close all

a = imread("cheems.jpg");
 subplot(1,2,1);
 imshow(a);
title("color img");

b= rgb2gray(a);
 subplot(1,2,2);
 imshow(b);
title("gray scale img");



#	Convert given color/gray-scale image into black & white image


clc
clear all
close all

a = imread("cheems.jpg");
subplot(1,3,1);
imshow(a);
title("color img");

b= rgb2gray(a)
subplot(1,3,2);
imshow(b);
title("gray scale img");

c= im2bw (a);
 subplot(1,3,3);
 imshow(c);
title("black and white img");


