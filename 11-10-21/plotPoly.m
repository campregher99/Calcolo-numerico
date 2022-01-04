function [] = plotPoly(poly,interval,string)
z=linspace(interval(1),interval(2),1000);
v=polyval(poly,z);
plot(z,v,string)
end

