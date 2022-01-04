function [pc,xc] = chebyshev(n,a,b,f)
xc=(a+b)/2-(b-a)/2*cos(pi*(0:n)/n);
y=f(xc);
pc=polyfit(xc,y,n);
end

