function [p] = calcPoly(func,interval,N)
%INPUT:
    %func:      funzione da approssimare
    %interval:  intervallo su cui fare l'interpolazione
    %N:         grado del polinomio desiderato

z=linspace(interval(1),interval(2),n+1);
y=func(z);
p=polyfit(z,y,N);
end

