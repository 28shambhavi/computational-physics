clc
g=9.8;
L=1;
u=5;
theta1=30;

theta=theta1*3.14/180;
tmax=2*u*sin(theta)/g

F=@(t) [u*t*cos(theta),u*t*sin(theta)-0.5*g*t*t];
a=Midpoint([0,0],0.001,0,F,tmax);

disp(a)

function root=Midpoint(y0,h,t0,F,tmax)
t=t0;
y=y0;
t_=[];
x_=[];
z_=[];
 while t<tmax
   t_=[t_,t];
   x_=[x_,y(1)]
   z_=[z_,y(2)]
   %k1=F(t0);
   
   tmid=t+h/2;
   %ymid=y0+(h/2)*k1;
   
   y=F(tmid);
   t=t+h;
   y0=y;
   
 end
 root=(y);
 plot(x_,z_)
end