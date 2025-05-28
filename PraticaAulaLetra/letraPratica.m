close all
clear all

pkg load image

im = imread('letra.png');
im = im2uint8(im);
im = rgb2gray(im);

figure(1)
imshow(im)

saida1 = im;

for i = 1:size(im,1)
  for j = 1:size(im,2)
    saida1(j, size(im,1) + 1 - i) = im(i, j);
  endfor
endfor

figure(2)
imshow(saida1)

saida2 = im;

for i = 1:size(im,1)
  for j = 1:size(im,2)
    saida2(size(im,1) + 1 - i, size(im,2) + 1 - j) = im(i, j);
  endfor
endfor

figure(3)
imshow(saida2)
