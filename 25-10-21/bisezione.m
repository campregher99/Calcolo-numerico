function [zero, fval, iter] = bisezione(f,interval,tol)
%f funzione
%interval estremi
%tol tolleranza

%zero lo zero della funzione trovato
%fval valore di f nel punto trovato
%iter numero di iterazioni
a=interval(1);
b=interval(2);
fa=f(a);fb=f(b);
if f(a)*f(b)>0 
    return
end
c=0;iter=0;fc=0;
while (b-a)/(2*max(abs(a),abs(b))) > tol
    c=(a+b)/2;
    fc=f(c);
    if fa*fc<0
       b=c;
    elseif fa*fc>0
        a=c;
        fa=fc;
    else
        break;
    end
    iter=iter + 1;
end
c=(a+b)/2;
fval=f(c);
zero=c;
end