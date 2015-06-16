%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Modeling the pendulum, Austin Baird
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear; 
clc; 

k = 9.8/15.0;
c = 1; 
time = [0 10]; 
[x,y] = meshgrid(-2:.5:10,-2.5:.5:2.5);
u = y;
v = -k*sin(x)-c*y;

eqn = @(t,y)  [y(2) ; -k*sin(y(1))-c*y(2)];
% for imaginary eigenvalues 
quiver(x,y,u,v,'r');
hold on
figure(1)
for y2 = 0:0.3:4,
  
    initial = [0 y2];
    [t,y] = ode45(eqn,time,initial);
    plot(y(:,1),y(:,2));
end
hold off
% figure(2)
% initial = [0 1];
% [t,y] = ode45(@pendulum,time,initial);
% plot(y(:,1),y(:,2));
% 
% figure(3) 
% 
% plot(t,y(:,1))

%hold off
% 