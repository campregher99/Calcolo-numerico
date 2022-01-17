function [pc,xc,y,err] = chebyshev(n,a,b,f,pert)
xc=(a+b)/2-(b-a)/2*cos(pi*(0:n)/n);
if nargin >= 5
    y=f(xc)+rand(1,length(xc))*pert;
else
    y=f(xc);
end
pc=polyfit(xc,y,n);
z=linspace(a,b,n*10);
err=norm(f(z)-polyval(pc,z),"inf");
end

