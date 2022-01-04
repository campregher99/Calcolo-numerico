function [x,u] = eqlim(f,sigma,mu,a,b,alpha,beta,N)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
h=(b-a)/N+1;
x=[];
for i=0:N-1
   x=[x a+i*h];
end
A=2*mu/h^2+sigma(x);
A=diag(A,0);
array=-mu/h^2*ones([1,N-1]);
A=A+diag(array,1)+diag(array,-1);
F=f(x);
F(1)=F(1)+mu*alpha/h^2;
F(end)=F(end)+mu*beta/h^2;
u=A\F';
u=u';
end

