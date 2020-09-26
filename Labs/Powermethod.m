
A1=[3,0,0;0,-20,0;0,0,4];
A2=[3,1,2;0,-20,1;0,0,4];                   
A3=[3,0,0;0,3.0001,0;0,0,4];
A4=[0.3,0,0;0,0.30001,0;0,0,0.1];
x0=[1;1;1];                                 
y=[2,3,4];
power(A3,x0,y,10^-9)
function [ev] = power(A,x0,y,tol)           
    i=0;
   
    lambda1=10;
    lambda2=30;
   while (abs(lambda2-lambda1)>tol)
       x0=A*x0;
       xnew=A*x0;
       xnew2=A*xnew;
       lambda1=(y*xnew)/(y*x0);
       lambda2=(y*xnew2)/(y*xnew);
       i=i+1;
       
   end
   ev=abs(lambda2);
   
   fprintf('The iterations required are %d',i);
end