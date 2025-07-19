close all;
clear all;

pkg load image;

%Caminho das imagens
caminho = 'C:\\Users\\vanes\\OneDrive\\Documentos\\PDI\\TrabalhoSegManual\\';

for(cont = 170:190)
  nome_arquivo = strcat(caminho, 'img_(', int2str(cont), ').png');

  im = imread(nome_arquivo);

  R = im(:,:,1);
  G = im(:,:,2);
  B = im(:,:,3);

  %cria uma máscara pra destacar a folha
  %mostre os pixels onde o verde é 20 unidades mais forte que vermelho e o azul
  mask = (G > R + 20) & (G > B + 20);

  img_binaria = uint8(mask) * 255;

  %mostra imagem original e a segmentada
  figure('Name', ['Imagem ', int2str(cont)]);
  subplot(1,2,1), imshow(im), title(['Original ', int2str(cont)]);
  subplot(1,2,2), imshow(img_binaria), title('segmentação manual');

  %salva as imagens segmentada
  %img_segmentada = strcat(caminho, 'segmentada_(', int2str(cont), ').png');
  %imwrite(img_binaria, img_segmentada);

  %só espera 1 segundo antes de ir para a próxima
  pause(1);

endfor