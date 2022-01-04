function [tn,un,h] = euleroEspl(f,t0,T,y0,N)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
h=(T-t0)/N;
un=y0;
tn(1)=t0;
for n=0:N-1
   un=[un un(:,end)+f(t0+h*n,un(:,end))*h];
   tn=[tn tn(end)+h];
end
end

