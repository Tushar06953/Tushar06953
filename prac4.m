pkg load image
a=imread("fgimage.jpg");
b=imread("Patternimage.jpg");
g=size(a);
b=imresize(b,[g(1),g(2)]);
z=bitand(a,b);
imshow(z);


b.


pkg load image
a=imread("fgimage.jpg");
b=imread("Patternimage.jpg");
g=size(a);
b=imresize(b,[g(1),g(2)]);
z=bitor(a,b);
imshow(z);




c.


pkg load image
a=imread("fgimage.jpg");
b=imread("Patternimage.jpg");
g=size(a);
b=imresize(b,[g(1),g(2)]);
z=bitand(a,b);
imshow(z);


d.

pkg load image
a=imread("fgimage.jpg");
z=imcomplement(a);
imshow(z);



