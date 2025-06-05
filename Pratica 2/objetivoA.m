close all
clear all

%criando uma imagem vazia
im = uint8(zeros(256, 256));

imDeg = im;

%degradê vertical (linhas com tons de cinza)
for(i = 1:size(im,1))
  deg = i - 1;
  imDeg(i,:) = deg;
endfor

figure('Name', 'degradê')
imshow(imDeg)


imGrad = imDeg;

%criando uma moldura
for(i = 1:size(im,1))
  for(j = 1:size(im,2))
    if((i > 7 && i < 26)||(i > 230 && i < 249)||
      (j > 7 && j < 26)||(j > 230 && j < 249))
      imGrad(i,j) = 128;
    endif
  endfor
endfor

figure('Name', 'imagem com moldura')
imshow(imGrad)


figure('Name', 'Resultado')
subplot(1,2,1)
imshow(imDeg)

subplot(1,2,2)
imshow(imGrad)


