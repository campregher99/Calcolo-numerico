function [] = plotPoly(poly,interval)
z=linspace(interval(1),interval(2),1000);
v=polyval(poly,z);
plot(z,v)
end

