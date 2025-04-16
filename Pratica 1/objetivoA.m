close all
clear all

m1 = imread('circulo.png');

figure('Name', 'm1')
imshow(m1)

m2 = uint8(m1);

figure('Name', 'm2')
imshow(m2)

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

imwrite(m2, 'circulo2.png')
