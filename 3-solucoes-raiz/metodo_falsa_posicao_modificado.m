% Dados de entrada
disp ('Este programa encontra uma raiz de uma equacao nao linear');
disp(' usando o Metodo da Falsa Posicao Modificado');
tol = input('Digite a tolerancia:   ');
a = input('Digite o limite inferior do intervalo a:   ');
b = input('Digite o limite superior do intervalo b:   ');
% Numero maximo de iteracoes permitido
nummax = 400;
% Atribuicoes Iniciais
x0 = a;
k = 1;
F = fun_01(a);
G = fun_01(b);

% Calculo da primeira aproximacao

x1 = (a * G - b * F) /(G - F);


% Calculo das aproximacoes

while abs(fun_01(x1)) > tol || abs((x1-x0) /x1) > tol || k >= nummax
   
     
   if (fun_01(a)*fun_01(x1) < 0)
        a = a;
        b = x1;
        G = fun_01(x1);
                    
        if ( fun_01(x0)*fun_01(x1) > 0.0)
            F = (fun_01(a))/2;
        end
   else
        a = x1;
        b = b;
        F = fun_01(x1);
        if ( fun_01(x0)*fun_01(x1) > 0.0)
            G = fun_01(b)/2;
        end
   end        
       k = k + 1;
       x0 = x1;
        
       x1 = (a * G - b * F) /(G - F);       
end
fprintf('Raiz encontrada com tol= %f\n',tol)
fprintf('raiz = %f\n',x1)
fprintf('Numero de iteracoes = %i\n', k)


   
   
   
       
   