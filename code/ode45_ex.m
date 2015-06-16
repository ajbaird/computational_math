% this is a super basic example of using ODE45 to solve y' = xy^2+y
% Just to show the built in matlab function and visualize output
% Wirtten by Austin Baird. 

F = @(x,y) x*y^2 +y;   % the function on the rhs of the equation 
x = [0 0.9];   % interval to evaluate the ode over (ode45 automatically partitions this

%x = 0:0.1:0.5;   % uncomment this to declare the points we want the ode evaluated at.
[x,y] = ode45(F,x,1);   %stores the discretize x domain (x) and gives approximate solutions (y)

%plot the output 
plot(x,y)

