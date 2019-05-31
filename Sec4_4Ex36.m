%{
Section 4.4
Exercise 36
%}

clear; clc

m = 4;
n = 3;

A = rand(m,n);

rank(A)

[Q, R] = qr(A);

Q1 = Q(:,1:end-1);
Q2 = Q(:,end);

% Q1 is a basis for the R^{n}, because A has rank = n

% Q2 is a basis for the nullspace o A', because it is normal to Q1
Q1'*Q2
A'*Q2
