function [zero,fz,iter] = newtonMat(f,J,x0,toll,Nmax)
%INPUT:
    %f:     funzione
    %J:     Jacobiano della funzione f
    %x0:    valore x di partenza
    %toll:  tolleranza con cui si determina che un valore sia pari a zero
    %Nmax:  numero massimo di iterazioni
%OUTPUT:
    %zero:  valore di x dove la funzione vale zero
    %fz:    valore della funzione nel punto di zero
    %iter:  numero di itarazioni adottate

y=f(x0);
dy=J(x0);
delta=-dy\y;
iter=0;
while norm(delta)>toll*norm(x0) & iter<Nmax & norm(y)~=0
   x0=x0+delta;
   y=f(x0);
   dy=J(x0);
   delta=-dy\y;
   iter=iter+1;
end
zero=x0;
fz=f(x0);
end

