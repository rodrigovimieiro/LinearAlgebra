%{
Section 5.1
Exercise 31
%}

clear; clc

Hmatrix = cell(1,10);

% Generate Hilbert matrices and calculate their determinant
for n=1:10
    Hmatrix{n} = hilb(n);
    Hmatrix_det(n) = det(Hmatrix{n});
end

% Get the pivots from the fifth hilbert
diag(lu(Hmatrix{5}))

