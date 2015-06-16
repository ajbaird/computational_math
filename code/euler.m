% a function which will take in three variables, z = [x_0,y_0], a function
% f(x,y), which is the rhs of the equation of y = f(x,y) as an anonomous
% funciton, the beginign and end of the domain, and the step size h.
%It will output an array of the approximate
% solution. Written by Austin Baird. 

function[y] = euler(g,z,start,stop,h)

% discretize the x-axis: 

x = start:h:stop;

% need an array of size x 
 y = 0*x; 
 
 % store in the initial value in the first position of the y array 
 y(1) = z(2);
 
 % get the size of the array x ( to use in the iteration) 
 
 iter = size(x);
 
 % now begin the iteration: 
 
 for i = 2:iter(2),
     y(i)=y(i-1)+h*g(x(i-1),y(i-1));   % Eulers method for y' = f(x_0,y_0)
 end
 
 % uncomment this section if you want to compute the error for y' = y
 %err = max(abs(y-exp(x)));
 %err
 %plot(x,y)
 %hold on 
 %plot(x,exp(x))