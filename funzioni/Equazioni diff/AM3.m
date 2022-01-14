function [t,u]=AM3(f,t0,T,y0,N)
% metodo di Adams Moulton a 2 passi
h=(T-t0)/N;
t(1)=t0;
u(1)=y0;
ff(1)=f(t(1),u(1));
for i=1:1;
tt=t(i);
y=u(i);
f1=f(tt,y);
tt=tt+h/2;
y=u(i)+h*f1/2;
f2=f(tt,y);
y=u(i)+h*f2/2;
f3=f(tt,y);
tt=tt+h/2;
y=u(i)+h*f3;
f4=f(tt,y);
t(i+1)=t(i)+h;
u(i+1)=u(i)+h*(f1+2*f2+2*f3+f4)/6;
ff(i+1)=f(t(i+1),u(i+1));
end

%
b=[8, -1]/12;
for n=2:N
un=u(n);
t(n+1)=t(n)+h;
tn1=t(n+1);
dep=sum(b.*ff(n-(1:2)+1));
cost=u(n)+h*dep;
g=@(y) y-cost-5*h*f(tn1,y)/12;
xn=fzero(g,un);
u(n+1)=xn;
ff(n+1)=f(t(n+1),u(n+1));
end
