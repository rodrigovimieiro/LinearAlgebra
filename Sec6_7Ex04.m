%{
Section 6.7
Exercise 04
%}

clear;clc;

A = [1 1;1 0];

At = A';

Au = A*At;

x1 = [1 ;(-1+sqrt(5))/2];
lambda1 = ((3+sqrt(5))/2);

x2 = [1 ;(-1-sqrt(5))/2];
lambda2 = ((3-sqrt(5))/2);

(Au * x1) - (lambda1.*x1)
(Au * x2) - (lambda2.*x2)


x1n = x1 ./ sqrt((5-sqrt(5))/2);
x2n = x2 ./ sqrt((5+sqrt(5))/2);


Sigma = diag([sqrt(lambda1) sqrt(lambda2)]);

if(abs((A*x1n)-(Sigma(1,1)*x1n))<10^-5)
    
U = [x1n];
V = [x1n];
    
else
    
U = [-x1n];
V = [x1n];
    
end

if(abs((A*x2n)-(Sigma(2,2)*x2n))<10^-5)
    
U = [U x2n];
V = [V x2n];
    
else
    
U = [U -x2n];
V = [V x2n];
    
end


A - (U*Sigma*V)





