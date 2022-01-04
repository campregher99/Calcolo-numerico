function [t,u]=AB2(f,t0,T,y0,N)
% metodo di Adams Bashfort a due passi
h=(T-t0)/N;
t(1)=t0;
u(1)=y0;
ff(1)=f(t(1),u(1));
tt=t(1);
y=u(1);
f1=f(tt,y);
tt=tt+h/2;
y=u(1)+h*f1/2;
f2=f(tt,y);
y=u(1)+h*f2/2;
f3=f(tt,y);
tt=tt+h/2;
y=u(1)+h*f3;
f4=f(tt,y);
t(2)=t(1)+h;
u(2)=u(1)+h*(f1+2*f2+2*f3+f4)/6;
ff(2)=f(t(2),u(2));
%
b=[3 -1]/2;
for n=2:N
t(n+1)=t(n)+h;
dep=0;
dep=sum(b.*ff(n-(1:2)+1));
u(n+1)=u(n)+h*dep;
ff(n+1)=f(t(n+1),u(n+1));
end
