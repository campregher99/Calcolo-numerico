function [X] = solveEQ2g(a,b,c)
%INPUT
    %coefficienti di un equazione di secondo grado: 
    %       ax^2+bx+c=0
%OUTPUT
    %X:     vettore delle soluzioni
delta=b^2-4*a*c;
if delta > 0
    X(1)=(-b-delta)/2/a;
    X(2)=(-b+delta)/2/a;
elseif delta == 0
    X=-b/2/a;
else 
    X=Nan;
end
end

