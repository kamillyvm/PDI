close all
clear all

im = imread('lena.png');

figure('Name', 'Lena 1');
imshow(im)

size(im)

for(i=1:size(im,1))
  for(j=1:size(im,2))
    im(i,j) = im(i,j) + 80;
  endfor
endfor

figure('Name', 'Lena 2 (+80)');
imshow(im)

for(i=1:size(im,1))
  for(j=1:size(im,2))
    im(i,j) = im(i,j) - 80;
  endfor
endfor

figure('Name', 'Lena 3 (-80)');
imshow(im)



%recarregar imagem original
im = imread('lena.png');

value = input("digite um valor inteiro: ")

for(i=1:size(im,1))
  for(j=1:size(im,2))
      im(i,j) = im(i,j) + value;
  endfor
endfor

imshow(im)
