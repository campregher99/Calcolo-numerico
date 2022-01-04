function[I]=quadratura(f,a,b,N,metodo)
% a,b estremi dell'intervallo;
% N numero delle suddivisioni;
% alpha, beta nomi delle funzioni che descrivono il dominio;
% f nome della funzione da integrare.
% metodo=1 per punto medio; =2 per trapezi; =3 per Simpson
%
% I valore dell'integrale;
% h ampiezza dei sottointervalli di integrazione.
h=(b-a)/N;
xn=linspace(a,b,N+1);
if metodo==1
x=xn(1:N)+h/2;
ff=f(x);
I=sum(ff);
I=h*I;
elseif metodo==2
x=xn;
ff=f(x);
I=h*sum([ff(1)/2 ff(2:N) ff(N+1)/2]);
elseif metodo==3 
x=[xn xn(1:N)+h/2];
ff=f(x);
I=h*sum([ff(1) ff(N+1) 2*ff(2:N) 4*ff(N+2:2*N+1)])/6;
end


