%% Primo test fattorizzazione LU
n = 20;
A = 2*rand(n)-1;
[L, U] = Elleu(A);
L
U
imagesc(log10(abs(A-L*U))) % Visualizzazione dellgli errori
colorbar
axis equal tight 

%% Secondo test fattorizzazione LU
n = 100;
A = 2*rand(n)-1;
[L, U] = Elleu(A);
imagesc(log10(abs(A-L*U))) % Visualizzazione dellgli errori
colorbar
axis equal tight 