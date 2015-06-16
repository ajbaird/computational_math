% this is the ode function which will hold the lorenz equations. Use this
% function with ode45 to get solutions! Written by Austin Baird, UNC
% applied math. 

function f = lorenz(t,y)

% define the parameters

sig = 10;
beta = 2.5;
rho = 28; 

% now store the equations in an array

f = [sig*(y(2)-y(1)) ; y(1)*(rho - y(3)) - y(2) ; y(1)*y(2)-beta*y(3) ];