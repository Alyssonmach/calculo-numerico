% definindo a fun��o e os seus par�metros
t = 0:0.1:10*pi;
r = linspace (0, 1, numel (t));
z = linspace (0, 1, numel (t));

% criando o ambiente de plotagem da fun��o
plot3 (r.*sin(t), r.*cos(t), z);

% configurando os detalhes do gr�fico
title(' 3-D Helix Plot')
xlabel('tx')
ylabel('ty')
zlabel('tz')
grid on