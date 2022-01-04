function []=plottapendolo1(t,u)
l=2;
figure(1)
set(1,'DefaultLineLineWidth',2)
plot(0,0,'ro',[0 l*sin(u(1,1))],[0 -l*cos(u(1,1))],...
l*sin(u(1,1)),-l*cos(u(1,1)),'ob')
axis([-2 2 -4 0])
axis square
pause
for i=1:length(t)
plot(0,0,'ro',[0 l*sin(u(i,1))],[0 -l*cos(u(i,1))],...
l*sin(u(i,1)),-l*cos(u(i,1)),'ob')
axis([-2 2 -4 0])
axis square
pause(.2)
end 

