close all
clear all

%ler imagem de um arquivo
im = imread('grao.jpeg');

pkg load image
figure(1)
imshow(im)

imGray = rgb2gray(im);
figure(2)
imshow(imGray)

% histograma da imagem cinza
h = imhist(imGray);

figure(3)
plot(h)


imMask = imGray;

for(i = 1:size(imGray, 1))
  for(j = 1:size(imGray, 2))
    if(imGray(i,j) < 100)
      imMask(i,j) = 1;
    else
      imMask(i,j) = 0;
    endif
  endfor
endfor

figure(4)
imshow(imMask, [0 1])

imSaida = imGray .* imMask;

figure(5)
imshow(imSaida)
