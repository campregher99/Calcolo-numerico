function [zero,fz,iter,xk] = newton(f,x0,toll,Nmax)
%INPUT:
    %f:     funzione definita con "syms x"
    %x0:    punto di partenza per la ricerca dello zero
    %toll:  tolleranza con cui si determina che un valore sia pari a zero
    %Nmax:  numero massimo di iterazioni
%OUTPUT:
    %zero:  valore di x dove la funzione vale zero
    %fz:    valore della funzione nel punto di zero
    %iter:  numero di itarazioni adottate
    %xk: valori intermedi di x0 adottati per raggiungere la soluzione

f1=diff(f);
f=matlabFunction(f);
df=matlabFunction(f1);
y=f(x0);
try
    dy=df(x0);
catch
    df=@(x) f1;
    dy=df(x0);
end
delta=-y/dy;
iter=0;
if nargout>=4
   xk=[];
   xk= [ xk x0 ];
end
while abs(delta)>toll*abs(x0)&&iter<Nmax
   x0=x0+delta;
   if nargout>=4
     xk=[xk x0];
   end
   y=f(x0);
   dy=df(x0);
   delta=-y/dy;
   iter=iter+1;
end
zero=x0;
fz=f(x0);
end

