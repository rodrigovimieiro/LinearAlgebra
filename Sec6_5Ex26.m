function Sec6_5Ex26()

clear; clc;

A = [9 0 0;0 1 2;0 2 8];


% I do not use Matlab lu, because it uses pivoting.
% https://stackoverflow.com/questions/41150997/perform-lu-decomposition-without-pivoting-in-matlab
[L,U] = lu_nopivot(A);

% Get pivots and make sqrt of them
D = sqrt(diag(diag(U)));

% Test the factorization
isZero = (A - L * D * D * L')==0;

C = D * L'

A = [1 1 1;1 2 2;1 2 7];
[L,U] = lu_nopivot(A);
D = sqrt(diag(diag(U)));
C = D * L'

end

function [L, U] = lu_nopivot(A)

n = size(A, 1); % Obtain number of rows (should equal number of columns)
L = eye(n); % Start L off as identity and populate the lower triangular half slowly
for k = 1 : n
    % For each row k, access columns from k+1 to the end and divide by
    % the diagonal coefficient at A(k ,k)
    L(k + 1 : n, k) = A(k + 1 : n, k) / A(k, k);

    % For each row k+1 to the end, perform Gaussian elimination
    % In the end, A will contain U
    for l = k + 1 : n
        A(l, :) = A(l, :) - L(l, k) * A(k, :);
    end
end
U = A;

end