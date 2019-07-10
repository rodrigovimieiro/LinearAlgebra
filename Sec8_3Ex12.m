%{
Section 8.3
Exercise 12

One lambda will be 0, because the Matrix was shifted by -I and before
the lambda was equal to 1.

%}

clear; clc

% Create a Markov matrix
B = [-.2 .3
      .2 -.3];
  
[S,lambda] = eig(B);

B(:,1) .* exp(lambda(1,1).*1000)
B(:,2) .* exp(lambda(2,2).*1000)


