%{
Section 4.4
Exercise 35
%}

clear; clc

A = eye(4) - diag([1 1 1], -1);

% Gram-Schmidt Factorization
% Q is the orthonormal matrix
% R is a triangular conection matrix

Q_notNorm = A;
for c=2:size(A,2)   % Run on each column vector from 2
    
    for cb=c:-1:2   % Run on each column vector before c to calculate the orthogonal vector
        Q_notNorm(:,c) = Q_notNorm(:,c) - ((Q_notNorm(:,c-1)'*Q_notNorm(:,c).*Q_notNorm(:,c-1))/(Q_notNorm(:,c-1)'*Q_notNorm(:,c-1)) );
    end
    
end

% Normalize each column vector dividing by the norm
Q_Norm = Q_notNorm * (diag(1./sqrt(diag(Q_notNorm'*Q_notNorm))));

% Integer - > [1 2 3 4].*sqrt(diag(Q_notNorm'*Q_notNorm))'