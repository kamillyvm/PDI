clear all
close all

im = imread('grao.jpeg');
imGray = rgb2gray(im);

figure(1)
imshow(imGray)

tic;

%encontra menor e maior valor da imagem
menor = 255;
maior = 0;

for i = 1:size(imGray,1)
  for j = 1:size(imGray,2)
    valor = imGray(i,j);
    if valor < menor
      menor = valor;
    endif
    if valor > maior
      maior = valor;
    endif
  endfor
endfor

%calcula a amplitude
amp = double(maior - menor);

%cria imagem de saída
imSaida = uint8(zeros(size(imGray,1), size(imGray,2)));

%alargamento de contraste
for i = 1:size(imGray,1)
  for j = 1:size(imGray,2)
    novo_valor = (double(imGray(i,j)) - double(menor)) * 255 / amp;
    imSaida(i,j) = uint8(novo_valor);
  endfor
endfor

toc;

figure(2)
imshow(imSaida)
