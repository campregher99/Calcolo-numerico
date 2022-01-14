function [x,u,h] = eqlim(f,sigma,mu,a,b,alpha,beta,N)

%mu y'' + sigma(x) y' = f(x,t)      t = [a b]   u(a) = alpha  u(b) = beta
%INPUT:
    %f:     funzione che definisce il valore delle derivate
    %sigma: funzione che moltiplica la derivata prima
    %mu:    costante che moltiplica la derivata seconda
    %a,b:   estremi dell'intervallo temporale
    %alpha,beta:    valori della funzione f agli estremi
    %N:     numero di suddivisioni dell'intervallo temporale
%OUTPUT:
    %x:     istanti di tempo in cui è stata calcolata la funzione
    %       differenziale
    %u:     valori assunti dalla soluzione dell'equazione differenziale
    %h:     valore della suddivisione temporale

h=(b-a)/(N+1);
x=[];
for i=1:N
   x=[x a+i*h];
end
A=2*mu/h^2+sigma(x);
A=diag(A,0);
array=-mu/h^2*ones([1,N-1]);
A=A+diag(array,1)+diag(array,-1);
F=f(x);
F(1)=F(1)+mu*alpha/h^2;
F(end)=F(end)+mu*beta/h^2;
u=A\F';
u=u';
x=[a,x,b];
u=[alpha,u,beta];
end

