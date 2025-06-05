close all
clear all

im = imread('lena.png');

figure('Name','imagem original')
imshow(im)

imClara = im;

for(i = 1:size(im,1))
  for(j = 1:size(im,2))
    imClara(i,j) = imClara(i,j) + (imClara(i,j) * 0.8);
  endfor
endfor

figure('Name','imagem clara')
imshow(imClara)

imEscura = im;

for(i = 1:size(im,1))
  for(j = 1:size(im,2))
    imEscura(i,j) = imEscura(i,j) - (imEscura(i,j) * 0.8);
  endfor
endfor

figure('Name','imagem escura')
imshow(imEscura)


