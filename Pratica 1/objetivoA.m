close all
clear all

%ler a imagem "círculo.png" e armazenar na matriz m1
m1 = imread('circulo.png');

%mostrar a matriz m1 em uma nova janela
figure('Name', 'm1')
imshow(m1)

%criar uma nova matriz m2 copiando a matriz m1
m2 = uint8(m1);

figure('Name', 'm2')
imshow(m2)

%percorrer a matriz m2 e definir os valores dos pixels do círculo como cinza médio
for(i=1:size(m2,1))
  for(j=1:size(m2,2))
    if(m2(i,j))
      m2(i,j,:) = 126;
    else
      m2(i,j,:) = 0;
    endif
  endfor
endfor

figure('Name', 'circulo modificado')
imshow(m2)

%salvar a matriz m2 no disco com o nome "circulo2.png"
imwrite(m2, 'circulo2.png')
