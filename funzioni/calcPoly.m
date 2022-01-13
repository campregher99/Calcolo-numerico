function [p,y,x,err] = calcPoly(func,interval,N,pert)
%INPUT:
    %func:      funzione da approssimare
    %interval:  intervallo su cui fare l'interpolazione
    %N:         grado del polinomio desiderato

z=linspace(interval(1),interval(2),N+1);
if nargin >= 4
    y=func(z)+rand(1,length(z))*pert;
else
    y=func(z);
end
p=polyfit(z,y,N);
x=z;
z=linspace(interval(1),interval(2),N*10);
err=norm(func(z)-polyval(p,z),inf);
end

