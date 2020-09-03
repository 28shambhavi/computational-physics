clc
a=0.3;
v=10;

% alpha=p and beta=q and E=x
p=sqrt(x)*5.12174/a;
q=(sqrt(v-x)*5.12174/a);

f1 = @(x) sqrt(x)*5.12174/a*tan(sqrt(x)*5.12174/a*a)-(sqrt(v-x)*5.12174/a);
f2 = @(x) sqrt(x)*5.12174/a*cot(sqrt(x)*5.12174/a*a)-(sqrt(v-x)*5.12174/a);

df1 = @(x) (f1(x+0.00005)-f1(x-0.00005))/0.0001;
df2 = @(x) (f2(x+0.00005)-f2(x-0.00005))/0.0001;

newrap(f1,df1,7,10, 0.001);
newrap(f2,df2,7,10, 0.001);

%newrap has a void return type

function newrap( f, df, x, x_old, d)
    iter = 0;
    while abs(x_old-x) > d
        x_old = x;
        fprintf('Iteration %d: x=%f \n', iter, x);  
        x = x - f(x)/df(x);
        iter = iter + 1;
    end
    fprintf('\n--------\n\n');
end