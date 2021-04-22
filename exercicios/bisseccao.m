% Mensagens de identificacao
disp('Programa para calcular uma raiz de uma equacao nao linear');
disp(' Metodo da Bisseccao');

% Leitura dos dados
tol = input('Digite a tolerancia : ');
a = input('Digite o limite inferior do intervalo a: ');
b = input('Digite o limite superior do intervalo b: ');

% Atribuicoes Iniciais
x0 = a;
k = 0;
nummax = 400;

% referenciado a função
z = @fun_01

% Calculo da primeira aproximacao
x1 = (a + b) / 2.;
% Calculo das aproximacoes
while abs(z(x1)) > tol || abs((x1-x0) / x1) > tol || k >= nummax


 if (z(a)*z(x1) < 0)
 a = a;
 b = x1;
 else
 a = x1;
 b = b;
 end
 k = k + 1;
 x0 = x1;

 x1 = (a + b) / 2.;

end
fprintf('Raiz encontrada com tol= %f\n',tol);
fprintf ( 'raiz = %f\n', x1 );
fprintf('Numero de iteracoes =%i\n', k);