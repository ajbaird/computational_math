% this code will make various plots of the lorenz equations using ode45.
% used to illustrate the strange attractor and sensitivity to intial
% conditions. Wirtten by Austin Baird. 

clc; 
clear; 

% initial conditions and time domain specified as arrays 
initial = [-8 8 27];
time = [0 20];

% call the ode45 function 

[t,y] = ode45(@lorenz,time,initial);

% make a plot of the strange attractor: 
figure(1)
plot(y(:,1),y(:,3));   % this is ploting x,z together 

% now make a plot of all the components on the same figure 
figure(2)
subplot(3,1,1);
plot(t,y(:,1));

subplot(3,1,2);
plot(t,y(:,2));

subplot(3,1,3);
plot(t,y(:,3));

% now make a plot with these initial conditions, and then change the
% initial conditions by 0.1 and create another plot

figure(3)
subplot(3,1,1);
plot(t,y(:,1));

initial = initial + 0.1; 

[t,y] = ode45(@lorenz,time,initial);

subplot(3,1,2); 
plot(t,y(:,1));

