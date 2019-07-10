%{
Section 8.3
Exercise 12

One lambda will be 0, because the Matrix was shifted by -I and before
the lambda was equal to 1.

%}

clear; clc

% Create a Markov matrix
A = [.4 .2 .3
     .2 .4 .3
     .4 .4 .4];
  
[S,lambda] = eig(A);

Sinv = inv(S);

% Using all eigenvalues and vector for demonstration
capitalLambda = S * lambda.^1000 * Sinv;

capitalLambda * [1;0;0]
capitalLambda * [100;0;0]

% We are only interested in the first eigenvalue and eigenvector, which
% will tell us the convergence matrix
Aconv = S(:,1).* lambda(1,1).^1000 * Sinv(1,:);

Aconv * [1;0;0]
Aconv * [100;0;0]
