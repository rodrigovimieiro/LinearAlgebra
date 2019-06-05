%{
Section 5.1
Exercise 32

What is a typical determinant (experimentally) of rand(n) and randn(n)
for n = 50, 100,200, 400? (And what does "Inf" mean in MATLAB?)

%}

clear; clc

n = [50,100,200,400];

detVal = zeros(2,numel(n));

for k=1:numel(n)
    A = rand(n(k));
    B = randn(n(k));
    
    detVal(1,k) = det(A);
    detVal(2,k) = det(B);
end

