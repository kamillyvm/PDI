close all
clear all

%ler imagem de um arquivo
im = imread('grao.jpeg');

%converter uma imagem colorida (RGB) em tons de cinza
imGray = rgb2gray(im);

%criando uma imagem vazia
imSaida = uint8(zeros(size(imGray, 1), size(imGray, 2)));

figure('Name', 'Imagem 1');
imshow(im);

%parâmetros
%retirar as medidas de largura e altura da imagem

%desenhando um quadrado vermelho
for(i=(int16(size(im,1)/3)):((int16(size(im,1)/3))*2))
  for(j=(int16(size(im,2)/3)):((int16(size(im,2)/3))*2))
    im(i,j,1) = 255;
    im(i,j,2) = 0;
    im(i,j,3) = 0;
  endfor
endfor

figure('Name', 'Imagem Modificada');
imshow(im);
