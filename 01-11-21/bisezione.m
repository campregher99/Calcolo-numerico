function [zero,fval,iter]=bisezione(f,a,b,tol)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
iter=0;
while (b-a)/(2*max(abs(a),abs(b)))>=tol
   c=(b+a)/2;
   fc=f(c);
   
end

