function[I]=quadGL(f,a,b,N,metodo)
% a,b estremi dell'intervallo;
% N numero delle suddivisioni;
% alpha, beta nomi delle funzioni che descrivono il dominio;
% f nome della funzione da integrare.
% metodo=1 per Gauss ad un punto (punto medio)
% metodo=2 per Gauss a due punti;
% metodo=3 per Gauss a tre punti;
%
% I valore dell'integrale;
% h ampiezza dei sottointervalli di integrazione.
h=(b-a)/N;
xn=linspace(a,b,N+1);
if metodo==1
xq=0;
wq=2;
elseif metodo==2
xq=[-1/sqrt(3),1/sqrt(3)];
wq=[1 1];
elseif metodo==3
xq=[-sqrt(15)/5,0,sqrt(15)/5];
wq=[5 8 5]/9;
end
%
xloc=h/2*(1+xq);
for i=1:N
iloc(i)=sum(f(xn(i)+xloc).*wq);
end
I=h/2*sum(iloc);


