% using while loops to execute commands till a certain tollerance is met
% finds the root of y = (x-3)^3, x = 3 using newtons method
% Austin Baird 
% Could be expanded to a function

clear; 
clc; 


% these functions will be explained

fun = @(x) (x-3).^3;


funprime = @(x) 3*(x - 3)^2;

err = 1;
x(1) = 1;   % This is our initial guess 
i=2   % need this to keep storing values 

while err > 0.01, 
    
     x(i) = x(i-1) - fun(x(i-1))/funprime(x(i-1));   %newtons method
     err = abs(x(i)-3);   %compute error
     graph(i-1) = err;    %store each value for plotting 
     i = i+1;   %increase i 
end
err   %print the error out 
i   % print the number of iterations
plot(graph);