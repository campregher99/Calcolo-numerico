function [t,u]=euleroimp(f,t0,T,y0,N)
%EULEROIMP Il metodo di Eulero implicito.
%   [T,U]=EULEROIMP(F,T0,T,Y0,N) risolve con
%   il metodo di Eulero implicito il problema
%   di Cauchy y'(t)=f(t,y(t)) con y(t0)=y0,
%   utilizzando N sotto-intervalli uguali.
%

h=(T-t0)/N;

if size(y0,1)==1
    u(:,1)=y0';
else
    u(:,1)=y0;
end

t=t0;

for n=1:N
    un=u(:,n);
    t(n+1)=t(n)+h;
    tn1=t(n+1);
    g=@(y) y-un-h*f(tn1,y);
    xn=fsolve(g,un);
    u(:,n+1)=xn;
end

return
