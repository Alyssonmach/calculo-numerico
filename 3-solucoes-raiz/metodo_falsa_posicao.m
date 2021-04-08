disp('Programa para calcular uma raiz de uma equacao nao linear');
disp(' Metodo da Falsa Posicao');

% Dados de entrada

tol = input('Digite a tolerancia:   ');
a = input('Digite o limite inferior do intervalo a:   ');
b = input('Digite o limite superior do intervalo b:   ');

% Atribuicoes Iniciais
x0 = a;
k = 1;
nummax = 400;

% Calculo da primeira aproximacao
x1 = (a * fun_01(b)- b *fun_01(a)) /(fun_01(b) - fun_01(a));

% Calculo das aproximacoes

while abs(fun_01(x1)) > tol || abs((x1-x0) /x1) > tol || k >= nummax
  
       
   if (fun_01(a)*fun_01(x1) < 0)
        a = a;
        b = x1;
   else
        a = x1;
        b = b;
   end        
       k = k + 1;
       x0 = x1;
        
       x1 = (a * fun_01(b)- b *fun_01(a)) /(fun_01(b) - fun_01(a));
       
end

fprintf('Raiz encontrada com tol= %f\n',tol);
fprintf ( 'raiz = %f\n', x1 );
fprintf('Numero de iteracoes = %i\n', k);
   
   
   
       
   