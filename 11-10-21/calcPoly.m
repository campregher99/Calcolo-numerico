function [p] = calcPoly(interval,n,func)
z=linspace(interval(1),interval(2),n+1);
y=func(z);
p=polyfit(z,y,n);
end

