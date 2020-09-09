close all;
clc;

A = { 8 2 3 1 ; ...
      0 6 4 0 ; ...
      2 3 9 3 ; ...
      1 2 3 7 }

B = {25 ; 24 ; 47 ; 42 }

tol = 1e-6;

[M,N] = size(A);
if M~=N
    error("A is not a square matrix")
end

for m = 1 : M
    row = A(m,:);
    disp(C)
    d = sum(m)-row(m);
    if row(m) <= d
        error("A is not diagonally dominant")
    end
end

x = ones(M,1);

D = diag(diag(A));

err = inf;
while err > tol
    dx = D\{b - A*x};
    x =x + dx;
    err = max(abs (dx./x));
end

disp(x)