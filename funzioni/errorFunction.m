function [E,X] = errorFunction(x,f,p)
%INPUT:
    %x: ascisse in cui calcolare l'errore
    %f: funzione di riferimento
    %p: polinomio interpolatore

y1=f(x);
y2=polyval(p,x);
E=y1-y2;
X=x;
end

