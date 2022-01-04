function [zero,fz,iter] = newtonMat(f,J,x0,toll,Nmax)
y=f(x0);
dy=J(x0);
delta=-dy\y;
iter=0;
while norm(delta)>toll*norm(x0) & iter<Nmax & norm(y)~=0
   x0=x0+delta;
   y=f(x0);
   dy=J(x0);
   delta=-dy\y;
   iter=iter+1;
end
zero=x0;
fz=f(x0);
end

