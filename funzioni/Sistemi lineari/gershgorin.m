function gershgorin(A)
%
%   A matrice
%   il programma disegna i cerchi di Grshgorin di A 
%   per righe e per colonne
%
clf
s=sum(abs(A))-abs(diag(A)');
r=sum(abs(A'))-abs(diag(A)');
teta=linspace(0,2*pi);
for i=1:length(A)
cx(:,i)=real(A(i,i))+r(i)*cos(teta);
cy(:,i)=imag(A(i,i))+r(i)*sin(teta);
dx(:,i)=real(A(i,i))+s(i)*cos(teta);
dy(:,i)=imag(A(i,i))+s(i)*sin(teta);
end
plot(cx,cy,'b',dx,dy,'r--')
title('cerchi blu = righe -- cerchi rossi = colonne')
axis equal
xy=axis;
hold on
plot(xy(1:2),[0 0],'k')
plot([0 0],xy(3:4),'k') 

