function[I]=quadGLL(f,a,b,N,metodo)
% a,b estremi dell'intervallo;
% N numero delle suddivisioni;
% alpha, beta nomi delle funzioni che descrivono il dominio;
% f nome della funzione da integrare.
% metodo=1 per Gauss-Lobatto a due punti (trapezi);
% metodo=2 per Gauss-Lobatto a tre punti (Simpson);
% metodo=3 per Gauss-Lobatto a quattro punti;
%
% I valore dell'integrale;
% h ampiezza dei sottointervalli di integrazione.
h=(b-a)/N;
xn=linspace(a,b,N+1);
if metodo==1
xq=[-1 1];
wq=[1 1];
elseif metodo==2
xq=[-1 0 1];
wq=[1/3 4/3 1/3];
elseif metodo==3
xq=[-1 -sqrt(5)/5 sqrt(5)/5 1];
wq=[1 5 5 1]/6;
end
%
xloc=h/2*(1+xq);
for i=1:N
iloc(i)=sum(f(xn(i)+xloc).*wq);
end
I=h/2*sum(iloc);


