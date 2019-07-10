%{
Section 6.3
Exercise 30

%}

clear; clc

deltaT = 2*pi/32;

u0 = [1;0];

A = [(4 - deltaT.^2)/(4 + deltaT.^2) 4*deltaT/(4 - deltaT.^2)
    -4*deltaT/(4 - deltaT.^2) (4 - deltaT.^2)/(4 + deltaT.^2)];

[S,lambda] = eig(A);

Sinv = inv(S);

Apower = S * lambda.^32 * Sinv;

Apower * u0