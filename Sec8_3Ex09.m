%{
Section 8.3
Exercise 9

%}

clear; clc

% Create a Markov matrix
P = [0.5 0.5 0 0; 0.5 0 0.5 0; 0 0 0 1; 0 0 1 0];
P = P';


[S,lambda] = eig(P);

Sinv = inv(S);

capitalLambda = S * lambda.^2 * Sinv;

sum(capitalLambda,1)
