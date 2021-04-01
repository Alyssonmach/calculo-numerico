% definindo a fun��o e os seus par�metros
tx = ty = linspace (-8, 8, 41)';
[xx, yy] = meshgrid (tx, ty);
r = sqrt (xx .^ 2 + yy .^ 2) + eps;
tz = sin (r) ./ r;

% criando o ambiente de plotagem da fun��o
mesh (tx, ty, tz);

% configurando os detalhes do gr�fico
title(' 3-D Sobrero Plot')
xlabel('tx')
ylabel('ty')
zlabel('tz')
grid on