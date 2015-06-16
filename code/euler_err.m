% this script is used to compute the error graph as a function of h (step
% size)
clear; 
clc;
% first we need to declare the variables that we need to execute the code 

start = 0; 
stop = 1000; 

f = @(x,y) -100*y; 

z = [0 1];

% make the h values (there is certainly a better way to do this!) 
%h = [0.5 0.4 0.3 0.2 0.1 0.09 0.08 0.07 0.06 0.05 0.04 0.03 0.02 0.01];

h = 0.015;
%temp = size(h); 
x = start:h:stop;
%for i = 1:temp(2), 
    %x = start:h(i):stop;   % need to discretize domain so that y and exp are same size
 y = euler(f,z,start,stop,h);   % call euler and store the approximation
    %err(i) = max(abs(y-exp(x)))  %compute the error for y'=y
%end
err = max(abs((y-exp(-100*x))))
%plot(h,err)   %plot the error and show the linear decrease as a funtion of h