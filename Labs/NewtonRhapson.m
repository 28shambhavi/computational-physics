
f1 = @(x) x^2 - 4;
f3 = @(x) x^2 -3*x +1;
f2 = @(x) x^6 - x - 1;

df1 = @(x) 2*x;
df2 = @(x) 6*x^5 -1;
df3 = @(x) 2*x - 3;

newrap(f1,df1, 1, 100, 2, 0.000001);
newrap(f2,df2, 1, 100, 1.1347, 0.000001);
newrap(f3,df3, 0.2, 100, 0.381836, 0.000001);

%newrap has a void return type

function newrap( f, df, x, x_old, x_true, d)
    iter = 0;
    while abs(x_old-x) > d && x ~= 0
        x_old = x;
        fprintf('Iteration %d: x=%f, err=%f\n', iter, x, x_true-x);  
        x = x - f(x)/df(x);
        iter = iter + 1;  
    end
    fprintf('\n--------\n');
end
