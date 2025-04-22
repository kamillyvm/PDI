close all
clear all

pkg load image

im = imread('peixebetta.jpg');
imGray = rgb2gray(im);

figure(1)
imshow(imGray)

h = imhist(imGray);
hLinha(1,:) = h(:,1);
figure(2)
plot(hLinha)

limiar = 150;

imSaida = imGray;

for(i = 1:size(imGray,1))
  for(j = 1:size(imGray,2))
    if(imGray(i,j) <= limiar)
      imSaida(i,j) = 255;
    else
      imSaida(i,j) = 0;
    endif
  endfor
endfor

figure(3)
imshow(imSaida)
