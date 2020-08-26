func1 = @(x) x^2 -4;
func2= @(x) x^2 -3*x +1;
func3=@(x) x^6 -x -1

bisection(func1,0,3,0.001,0.001)
bisection(func2,0,2,0.001,0.001)
bisection(func3,0,10,0.001,0.001)

%bisection has void return type
function bisection(f,x1,x2,d,c)
    i=0;
    xmid=(x1+x2)/2;
    while (abs(f(xmid)) > d) && (x2-x1>c)
    i=i+1;
   fprintf("The interval difference in iteration %d is %g \n",i,abs(x2-x1))
    if(f(xmid) * f(x2))<0
        x1=xmid;
    else
        x2=xmid;
    end
xmid=(x2+x1)/2;
end

fprintf("The total iterations were %d \n",i)

fprintf("The root is %g \n",xmid)
end
