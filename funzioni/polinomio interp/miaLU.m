function [A,U]=miaLU(A)
%LU_GAUSS Fattorizzazione di Gauss senza pivoting.
%
%   [L,U]=LUNOPIV(A) memorizza in L il fattore 
%   triangolare inferiore della fattorizzazione LU
%   di A, in U quello triangolare superiore.


n=max(size(A));
for k = 1:n-1 
  for i = k+1:n
    A(i,k) = A(i,k)/A(k,k);
    for j = k+1:n  
      A(i,j) = A(i,j) - A(i,k)*A(k,j);
    end
  end
end

  U=triu(A); 
  A=eye(n)+tril(A,-1); 

return
