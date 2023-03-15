clear;
clc;
clf;
close all;

my_img=imread('siuu.jpg');

R = my_img(:,:,1);
G = my_img(:,:,2);
B = my_img(:,:,3);
my_img = 0.298936*R + 0.587043*G + 0.114021*B;

##figure;
imshow(my_img);
title("Input image");

# robert
##filter = "robert"
##kx= [0, 0, -1; 0, 1, 0; 0, 0, 0];
##ky= [-1, 0, 0; 0, 1, 0; 0, 0 ,0];

# prewitt
##filter = "prewitt"
##kx = 1/3 * [1, 0, -1; 1, 0, -1; 1, 0, -1];
##ky = 1/3 * [-1, -1, -1; 0, 0, 0; 1, 1 ,1];

# sobel
filter = "sobel"
kx= 1/4*[1 ,0 ,-1; 2,0,-2; 1, 0 ,-1];
ky= 1/4*[1,2,1; 0,0, 0; -1, -2 ,-1];

H = conv2(im2double(my_img),kx,'same');
V = conv2(im2double(my_img),ky,'same');

E = sqrt(H.*H); % filter by x
figure;
imshow(E, []);
title("filter by x");

E = sqrt(V.*V); % filter by y
figure;
imshow(E, []);
title("filter by y");


E = sqrt(H.*H + V.*V); % or sqrt(H.^2+V.^2)
figure;
imshow(E, []);
title(strcat(filter, " filter"));

