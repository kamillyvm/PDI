close all
clear all

%ler a imagem "círculo.png" e armazenar na matriz m1
m1 = imread('circulo.png');

%mostrar a matriz m1 em uma nova janela
figure('Name', 'm1')
imshow(m1)

%criar uma nova matriz m2 copiando a matriz m1
m2 = uint8(m1);

%tudo que for 1 (branco), vai receber 126
m2(m1==1) = 126

figure('Name', 'circulo modificado')
imshow(m2)

%salvar a matriz m2 no disco com o nome "circulo2.png"
imwrite(m2, 'circulo2.png')
