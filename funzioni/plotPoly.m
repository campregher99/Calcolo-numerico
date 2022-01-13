function [] = plotPoly(poly,interval,format)
z=linspace(interval(1),interval(2),1000);
v=polyval(poly,z);
if nargin >= 3
    plot(z,v,format)
else
    plot(z,v)
end
end

