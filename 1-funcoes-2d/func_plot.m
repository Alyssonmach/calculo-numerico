% configurando as fun??es e seus par?metros
x = (-2 * pi) : (pi / 100) : (2 * pi);
y1 = sin(2 * x);
y2 = 2 * cos(2 * x);

% montando o ambiente de plotagem
plot(x, y1, 'k-', x, y2, 'g-');

% definindo as configura??es de plotagem
title('Gr?fico de y = sin(2x) e sua derivada');
xlabel('Eixo X');
ylabel('Eixo Y');
legend('f(x)', 'd/dx f(x)');
grid on