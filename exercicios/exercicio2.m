% definindo os valores de do eixo x e a curva do eixo y
x = -6: 6/100: 6;
y = 5*e.^x - 5*cos(2*x);

% plotando o gráfico y = f(x)
plot(x, y, 'r-');

% configurando os detalhes do gráfico
ylim([-10, 10])
title('y = 5*e^x - 5*cos(2*x)');
ylabel('y');
xlabel('x');
grid('on');
 