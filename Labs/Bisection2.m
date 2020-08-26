func = @(x) tan(x) -x ;

bisection(func,2,4.7,0.001,0.001)


function bisection(f,x1,x2,d,c)
    l=0.0005; 
    a=0.01;
    
    xmid=(x1+x2)/2;
    while (abs(f(xmid)) > d) && (x2-x1>c)
    
    if(f(xmid) * f(x2))<0
        x1=xmid;
    else
        x2=xmid;
    end
    xmid=(x2+x1)/2;
    end

    fprintf("Alpha is %g \n",xmid)
    theta=asind(xmid*l / (pi*a));
    fprintf("Theta is %g \n",theta)

end
