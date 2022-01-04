function [zero,fz,iter,xk] = newton(f,x0,toll,Nmax)
f1=diff(f);
f=matlabFunction(f);
df=matlabFunction(f1);
y=f(x0);
dy=df(x0);
delta=-y/dy;
iter=0;
if nargout>=4
   xk=[];
   xk= [ xk x0 ];
end
while abs(delta)>toll*abs(x0)&&iter<Nmax
   x0=x0+delta;
   if nargout>=4
     xk=[xk x0];
   end
   y=f(x0);
   dy=df(x0);
   delta=-y/dy;
   iter=iter+1;
end
zero=x0;
fz=f(x0);
end

