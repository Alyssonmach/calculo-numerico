% Dados de entrada
disp('Programa para calcular uma raiz de uma equacao nao linear');
disp(' Metodo de Newton');
tol = input('Digite a tolerancia no formato:   ');
x0 = input('Digite o valor inicial x0:   ');

% Atribuicoes Iniciais

k = 0;
l = 400;

% Calculo da primeira aproximacao

        x1 = x0 - ( fun_01(x0)) / (dfun_01(x0));


% Calculo das aproximacoes

while abs(fun_01(x1)) > tol || abs((x1-x0) /x1) > tol || k >= l
   
     x0 = x1;
    
      x1 = x0 - ( fun_01(x0)) / (dfun_01(x0)); 
   
     k = k + 1;
           
      
end
fprintf('Raiz encontrada com tol= %f\n',tol)
fprintf ( 'raiz = %f\n', x1 )
fprintf('Numero de iteracoes =%i\n', k)
   
   
   
       
   