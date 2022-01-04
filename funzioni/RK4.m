function[tt,u]=RK4(f,t0,T,y0,N)
% calcola la soluzione di un'equazione differenziale ordinaria
% mediante il metodo di Runge Kutta del 4 ordine
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
t=t+h/2;
y=u(i,:)'+h*f1/2;
f2=f(t,y);
y=u(i,:)'+h*f2/2;
f3=f(t,y);
t=t+h/2;
y=u(i,:)'+h*f3;
f4=f(t,y);
tt(i+1)=tt(i)+h;
u(i+1,:)=u(i,:)+h*(f1+2*f2+2*f3+f4)'/6;
end
if size(u,2)==1
u=u';
end



