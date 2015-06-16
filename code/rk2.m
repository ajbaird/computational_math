%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This is a function which computes the approximation 
% of the solution to y' = f(t,y) using second order runge-kutta 
% method. Written by Austin Baird, error code accompanies it. 
% a function will take in three variables, z = [t_0,y_0], a function
% f(t,y), which is the rhs of the equation of y' = f(t,y) as an anonomous
% funciton, the beginign and end of the time domain, and the step size h.
% It will output an array of the approximate solution. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


function[y] = rk2(f,z,start,stop,h)

t = start:h:stop;   % discretize the time domain
y = 0*t;    % get an array to store values of y 
y(1) = z(2);   % store first initial value 

iter = size(t);   % get the size of the domain to iterate through
% begin forloop 
for i = 2:iter(2), 
    k1 = h*f(t(i-1),y(i-1));
    k2 = h*f(t(i-1)+0.5*h, y(i-1) + 0.5*k1);
    y(i) = y(i-1) + k2;
    
end

% data is now stored in y! 