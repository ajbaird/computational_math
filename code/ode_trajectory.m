%----------------------------------------------------------------------%
% Solving a system of odes, one with a stable equilibrium at the origin
% The other ode has imaginary eigenvalues so is stable and bounded, but 
% doesn't have an attracting equilibrium. 
% Written by Austin Baird 
%----------------------------------------------------------------------%

% main program: 


%clf; 
clc;
clear;

time = [0 20]; 

% for imaginary eigenvalues 

hold on
figure(1)
for i = 0:1:10,
    initial = [i+2 (i-3)/2];
    [t,y] = ode45(@imaginary,time,initial);
    plot(y(:,1),y(:,2));
end

hold off
% 
% real eigenvalues: 


figure(2)
hold on 
for i = 0:1:10,
    initial = [i+5 (i-5)/2];
    [t,y] = ode45(@negative,time,initial);
    plot(y(:,1),y(:,2));
end
hold off