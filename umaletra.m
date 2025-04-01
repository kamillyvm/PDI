% Criar uma matriz 10x10 preenchida com 0 (fundo branco)
img = ones(10, 10);

% Criar a parte vertical da letra "K" (preenchida com 0 - preto)
img(2:9, 3) = 0;

% Criar a parte diagonal superior da letra "K"
img(3, 6) = 0;
img(4, 5) = 0;
img(5, 4) = 0;
img(6, 3) = 0;

% Criar a parte diagonal inferior da letra "K"
img(6, 4) = 0;
img(7, 5) = 0;
img(8, 6) = 0;
img(9, 7) = 0;

% Exibir a imagem
imshow(img);
colormap(gray);
axis equal; % Mantém os pixels quadrados

