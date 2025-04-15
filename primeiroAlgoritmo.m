close all
clear all

%ler imagem de um arquivo
im = imread('C:\Users\vanes\OneDrive\Documentos\PDI\grao.jpeg');

%converter uma imagem colorida (RGB) em tons de cinza
imGray = rgb2gray(im);

%criando uma imagem vazia
imSaida = uint8(zeros(size(imGray, 1), size(imGray, 2)));

figure('Name', 'Imagem 1');
imshow(im);
