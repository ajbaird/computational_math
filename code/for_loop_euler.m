% An example of Eulers method, Austin Baird 
%Also good for loop example, can be modified to make it a good 
% function example. for this example we are approximating 
% y' =  y for y(0)=1, we know solution so we can test error!
clear; 
clc; 

h = 0.01;   %step size
x = [0:h:2];% discretize the domain 
y = 0*x;   %y is the size of x and stores values of the iteration
y(1) = 1;   % we know the initial value of y. y(x_0)=y_0 
iter = size(x)

for i = 2:iter(2),
    i;
    y(i)=y(i-1)+h*(y(i-1));   %eulers method for f(x,y)=y
end

diff = abs(y - exp(x));
err = max(diff)

% plotting to see difference

plot(x,y,'r', x,exp(x))
legend('approximate','real')
%hold on 
%plot(x,exp(x))
%legend('real')

