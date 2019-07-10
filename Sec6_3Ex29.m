%{
Section 6.3
Exercise 29

%}

clear; clc

S = [1-1i 1+1i;sqrt(2)*1i -sqrt(2)*1i];

lambda = diag([1i -1i]);

Sinv = inv(S);

A4 = S * lambda.^4 * Sinv;

abs(A4)