% Mensagens de identificacao
disp('Programa para calcular uma raiz de uma equacao nao linear');
disp(' Metodo da Falsa Posicao Modificada');

% Leitura dos dados
tol = input('Digite a tolerancia : ');
a = input('Digite o limite inferior do intervalo a: ');
b = input('Digite o limite superior do intervalo b: ');

% Atribuicoes Iniciais
x0 = a;
k = 0;
nummax = 400;

z = @fun_01

% Calculo da primeira aproximacao
fa = z(a);
fb = z(b);
x1 = (a*abs(fb) + b*abs(fa))/(abs(fa)+abs(fb));

% Calculo das aproximacoes
while abs(z(x1)) > tol || abs((x1-x0) / x1) > tol || k >= nummax

 if (z(a)*z(x1) < 0)
   a = a;
   b = x1;
 if(z(x0)*z(x1)>0)
  fa = z(a)/2;
 else
  fa = z(a);
 end
  fb = z(b);
 else
   a = x1;
   b = b;
 if(z(x0)*z(x1)>0)
  fb = z(b)/2;
 else
  fb = z(b);
 end
  fa = z(a);
 end
   k = k + 1;
   x0 = x1;
   x1 = (a*abs(fb) + b*abs(fa))/(abs(fa)+abs(fb));

end
fprintf('Raiz encontrada com tol= %f\n',tol)
fprintf ( 'raiz = %f\n', x1 )
fprintf('Numero de iteracoes = %i\n', k)