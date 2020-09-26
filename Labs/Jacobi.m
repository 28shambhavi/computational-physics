function root = jacobi(a, b, x, n, error)

    D=zeros(n,n);
    M=a;
    for i=1:n
        D(i, i)=a(i, i);
        M(i, i)=0;
    end
    
    x0 = x;
    
    x= D\b - D\M*x0;
    
    while(norm(x-x0)>error)
        x0 = x;
    
        x= D\b - D\M*x0;
    end

    root = x;

    disp(x);  

end
