%%INCOMPLETO

clear all;
close all;

pkg load image;

text_26 = imread("text_26.png");

tads_26 = imread("tads_26.png");

mask_26 = imread("mask_26.png");

land_26 = imread("land_26.png");

animal_26 = imread("animal_26.png");

animal_26 = rgb2gray(animal_26);

for(i=1:size(animal_26,1))
  for(j=1:size(animal_26,2))
    animal_26Esp(j,i) = animal_26(j,size(animal_26,2)- i + 1);
  endfor
endfor

animal_26Esp2 = animal_26Esp;

for i = 1:size(animal_26,1)
  for j = 1:size(animal_26,2)
    animal_26Esp2(size(animal_26,1) + 1 - i, size(animal_26,2) + 1 - j) = animal_26(i, j);
  endfor
endfor

figure("Name","animal_26 Espelhada");
imshow(animal_26Esp2);

for(i=1:size(tads_26,1))
  for(j=1:size(tads_26,2))
    if(tads_26(i,j,:) > 190)
      tads_26(i,j,:) = text_26(i,j,:);
    else
      tads_26(i,j,:) = 0;
    endif
  endfor
endfor

figure("Name","tads_26")
imshow(tads_26);

for(i=1:size(mask_26,1))
  for(j=1:size(mask_26,2))
    if(mask_26(i,j,:) == 127)
      mask_26(i,j,1) = 0;
      mask_26(i,j,2) = 255;
      mask_26(i,j,3) = 255;

    elseif(mask_26(i,j,:) == 180)
          mask_26(i,j,:) = animal_26Esp2(i,j,:);
    endif
  endfor
endfor

l=1;
c=1;
for(i=1:size(tads_26,1) + 1)
  for(j=size(mask_26,2) - size(tads_26,2)+1:size(mask_26,2))
       mask_26(i,j,:) = tads_26(l,c,:);
      c++;
  endfor
    c=1;
    l++;
    if(l > size(tads_26,1))
      l=1;
    endif
endfor

figure("Name","mask_26");
imshow(mask_26);
