clc
n=10:500; %plotting till upper limit since the calculations above this are taking very long
time=[];
for i=n
    a=rand(i,i);
    b=rand(i,1);
    tic
    x=a\b; % finding x using guassian function
    time=[time,toc]%storing toc into time array
end
plot(n,time)