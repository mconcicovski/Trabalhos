%N�rton Daniel Barth
clc;
clear all;
format long e;
disp ('Zero de fun��es pelo m�todo da falsa posi��o');
disp ('  ');
a = input ('Entre com o ponto inicial a ser avaliado \n');

Nmax = input ('Qual o numero maximo de intera��es? \n');

e = input ('Qual a prescis�o requisitada? \n');
%###################################################
%f=x^2-2          %Fun��o a ser calculada
%###################################################
%g=2*x;               %Derivada de f(x)
%###################################################
n=0;

for n=1:Nmax
    %z=x-(f(x)/G(x))
    z=a-((a^2-2)/(2*a));        %Fun��o de Newton, colocar aki a equa��oa
    %que se deseja achar o zero, s� ao inv�z de X colocar a
    
    teste= abs(z);
    
    if teste<e
       a                    %� a solu��o
       break
    else
       E=abs((z-a)/z);      %Quesito erro
       
       if E<e
       a                    %� a solu��o
       break
       end
    end
    a=z
  
end









