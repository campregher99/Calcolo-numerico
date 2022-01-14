function [errore] = erroreTeorico(h,b,a,metodo)
% metodo=1 per punto medio; =2 per trapezi; =3 per Simpson
% h ampiezza dei sottointervalli di integrazione.
%
%errore teorico

if metodo==1 || metodo==2
    errore=h^2*(b-a);
else
    errore=h^4*(b-a);
end

