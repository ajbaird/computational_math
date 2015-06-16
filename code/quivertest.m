clear; 
clc; 

a = 2; 
b = 1; 
d = 2; 
e = 1; 


[x,y]=meshgrid(.1:.2:4,.1:.2:4);
%[x,y] = meshgrid(-1:0.3:5,-1:0.3:5);


dy=-2*y+x.*y;
dx=2*x-x.*y;
%dx = a*x -b*x*y; 
%dy = -d*y + e*x*y; 
dyu=dy./sqrt(dy.^2+dx.^2);
dxu=dx./sqrt(dy.^2+dx.^2);


figure(1) 
quiver(x,y,dxu,dyu,'r')