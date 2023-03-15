clear;
clc;
clf;
close all;

i=imread('siuu.jpg');
#convert rgb to gray
R = i(:,:,1);
G = i(:,:,2);
B = i(:,:,3);
grayImage = 0.298936*R + 0.587043*G + 0.114021*B;
##grayImage = imread('cameraman.tif');
figure
imshow(grayImage);
title('Input Image');

kx= [-1,1];
ky= [-1;1];

H = conv2(im2double(grayImage),kx,'same');
V = conv2(im2double(grayImage),ky,'same');

figure;
imshow(H,[]);
title("filter by x");

figure;
imshow(V,[]);
title("filter by y");



