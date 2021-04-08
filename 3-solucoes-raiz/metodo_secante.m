% Dados de entrada
disp('Programa para calcular uma raiz de uma equacao nao linear');
disp(' Metodo de Secante');
tol = input('Digite a tolerancia no formato:   ');
xi0= input('Digite o primeiro ponto inicial x-1: ');
xi1 = input('Digite o segundo ponto inicial x0:   ');

% Atribuicoes Iniciais

k = 1;
% Numero maximo de iteracoes
l = 400
% Calculo da primeira aproximacao

xi2 = (xi0 * fun_01(xi1) - xi1 * fun_01(xi0)) /(fun_01(xi1) - fun_01(xi0));


% Calculo das aproximacoes

while abs(fun_01(xi2)) > tol || abs((xi2-xi1) /xi2) > tol || k >= l
   
    xi1 = xi2;
    
    xi2 = (xi0 *fun_01(xi1) - xi1 * fun_01(xi0)) / (fun_01(xi1) - fun_01(xi0));
   
     k = k + 1;
           
      
end
fprintf('Raiz encontrada com tol= %f\n',tol)
fprintf ( 'raiz = %f\n', xi2)
fprintf('Numero de iteracoes =%i\n', k)
   
   
   
       
   