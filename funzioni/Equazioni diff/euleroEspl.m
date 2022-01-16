function [tn,un,h] = euleroEspl(f,t0,T,y0,N)
%INPUT:
    %f:     funzione
    %t0:    istante di tempo iniziale
    %T:     istante di tempo finale
    %y0:    valore di y nell'istante 0
    %N:     numero di suddivisioni
%OUTPUT:
    %tn:    vettore dei tempi della soluzione
    %un:    vettore delle soluzioni
    %h:     entità delle suddivisioni
    
h=(T-t0)/N;
un=y0;
tn(1)=t0;
for n=0:N-1
   un=[un un(:,end)+f(t0+h*n,un(:,end))*h];
   tn=[tn tn(end)+h];
end
un=un';
end

