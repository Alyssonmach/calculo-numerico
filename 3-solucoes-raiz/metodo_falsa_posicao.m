% Mensagens de identificacao
disp('Programa para calcular uma raiz de uma equacao nao linear');
disp(' Metodo da Falsa Posicao');
% Leitura dos dados
tol = input('Digite a tolerancia : ');
a = input('Digite o limite inferior do intervalo a: ');
b = input('Digite o limite superior do intervalo b: ');

f = @fun_01

prec1 = tol;
prec2 = tol;
nmax = 400;

% calculo da primeira aproximacao
p = (a*f(b)-b*f(a)) / (f(b) - f(a));
fp = f(p);

% calculo das aproximacoes
if (b - a < prec1 || abs(fp) < prec2)
  return 
endif

k = 1;
M = f(a);
while (k < nmax)
  if (M * f(p) > 0)
    a = p;
  else
    b = p;
  endif
  
  p = (a*f(b)-b*f(a)) / (f(b) - f(a));
  fp = f(p);
  k = k + 1;
  
  if (b - a < prec1 || abs(fp) < prec2)
    fprintf('Raiz encontrada com tol= %f\n',prec1);
    fprintf ( 'raiz = %f\n', p );
    fprintf('Numero de iteracoes = %i\n', k);
    return 
  endif
endwhile

printf("Não foi possível chegar ao resultado, mesmo após %d interações", k);