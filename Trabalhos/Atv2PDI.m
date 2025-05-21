%iniciado dia 14 de abril, terminado hoje, dia 20 de maio

clear all
close all
pkg load image

%aplica o alargamento de contraste
%calcula o limiar automático
%realiza a limiarização binária de 2 níveis
%exibe as três figuras

im = imread('grao.jpeg');

tic
imGray = rgb2gray(im);

alt = size(imGray,1);
larg = size(imGray,2);
menor = 255;
maior = 0;

for(i=1:alt)
  for(j=1:larg)
    if(imGray(i,j) < menor)
      menor = imGray(i,j);
    endif
    if(imGray(i,j) > maior)
      maior = imGray(i,j);
    endif
  endfor
endfor

med = maior - menor;
esc = 255/med;

for(i=1:alt)
  for(j=1:larg)
    imGray(i,j) = (imGray(i,j) - menor) * esc;
  endfor
endfor

figure(1)
imshow(imGray)

h = imhist(imGray);
hLinha(1,:) = h(:,1);
figure(2)
plot(hLinha)

total = sum(hLinha);
soma = 0;

for(i = 1:256)
  soma = soma + i * hLinha(i);
endfor

limiar = soma/total;

imBin = zeros(alt, larg);
for(i=1:alt)
  for(j=1:larg)
    if(imGray(i,j) > limiar)
      imBin(i,j) = 255;
    else
      imBin(i,j) = 0;
    endif
  endfor
endfor

figure(3)
imshow(uint8(imBin))

toc

