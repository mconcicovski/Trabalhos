%Nórton Daniel Barth
clc;
clear all;
format long e;
disp ('Zero de funções pelo método da falsa posição');
disp ('  ');
a = input ('Entre com o ponto inicial a ser avaliado \n');

Nmax = input ('Qual o numero maximo de interações? \n');

e = input ('Qual a prescisão requisitada? \n');
%###################################################
%f=x^2-2          %Função a ser calculada
%###################################################
%g=2*x;               %Derivada de f(x)
%###################################################
n=0;

for n=1:Nmax
    %z=x-(f(x)/G(x))
    z=a-((a^2-2)/(2*a));        %Função de Newton, colocar aki a equaçãoa
    %que se deseja achar o zero, só ao invéz de X colocar a
    
    teste= abs(z);
    
    if teste<e
       a                    %É a solução
       break
    else
       E=abs((z-a)/z);      %Quesito erro
       
       if E<e
       a                    %É a solução
       break
       end
    end
    a=z
  
end









