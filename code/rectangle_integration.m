% This is a script which will approximate an integral from a to b using rectangle rule:
% Making this a function is the next step... Written by Austin Baird, UNC. 

clear; 
clc; 


% discretize the x-axis: 

a = 0; 
b = 3;   %bounds of the integral 
h=0.01;

x = a:h:b;   % dicretize with step size 0.1 
step = size(x);   % get this value for iterating 
sum = 0;    %going to store the sum of the functions here 

f = @(x) x^2;   % declare the approximated function would want this to be user set 

% now we want to sum the rectangles from a to b. Here we dont want to use
% nodes at x_i we actually want to use the midpoint at the jth interval. 

for i = 1:step(2)-1,
    midpoint = (x(i)+x(i+1))/2 ;
    temp = f(midpoint);
    sum = sum + temp;   % sum all the values at the midpoints
end

rec = sum*h;    % this gives us the full rectangular approximation to this integral

% now test the error 

err = abs((3^3)/3 - rec)  %here we know the solution of this integral (3^3/3), so use to test error

h = 0.01:0.01:0.1
hsize = size(h)

for i = 1:hsize(2),
   for i = 1:step(2)-1,
    midpoint = (x(i)+x(i+1))/2 ;
    temp = f(midpoint);
    sum = sum + temp;   % sum all the values at the midpoints
   end
err(i) = abs((3^3)/3 - rec);
end

figure(2)
plot(err)
