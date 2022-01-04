function[tt,u]=Heun(f,t0,T,y0,N)
% calcola la soluzione di un'equazione differenziale ordinaria
% mediante il metodo di Eulero esplicito
%  input: t0,T   estremi dell'intervallo
%         N      numero dei passi
%         f      function che contiene la funzione f (da valutare in (t,y))
%         y0     valore iniziale
%
% output:   tt  punti in cui viene calcolata la soluzione
%           u   vettore contenente i valori della soluzione in tt
%
h=(T-t0)/N;
tt(1)=t0;
if size(y0,1)==1
   u(1,:)=y0;
else
   u(1,:)=y0';
end
for i=1:N;
t=tt(i);
y=u(i,:)';
f1=f(t,y);
t=t+h;
y=u(i,:)'+h*f1;
tt(i+1)=t;
u(i+1,:)=u(i,:)+h*(f1+f(t,y))'/2;
end
if size(u,2)==1
u=u';
end



