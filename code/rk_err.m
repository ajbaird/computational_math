% this script is used to compute the error graph as a function of h (step
% size) of the rk2 function
clear; 
clc;
% first we need to declare the variables that we need to execute the code 

start = 0; 
stop = 2; 

f = @(t,y) y;  % we know the solution to be exp(t)

z = [0 1];

% make the h values (there is certainly a better way to do this!) 
h = [0.1 0.09 0.08 0.07 0.06 0.05 0.04 0.03 0.02 0.01];

temp = size(h); 

for i = 1:temp(2), 
    t = start:h(i):stop;   % need to discretize domain so that y and exp are same size
    y = rk2(f,z,start,stop,h(i));   % call rk2 and store the approximation
    err(i) = max(abs(y-exp(t)));  %compute the error for y'=y
end

err_ln = log(err);    %take a log of the data
h_ln = log(h);


% display the slope of the line

slope = (err_ln(6)-err_ln(5))/(h_ln(6)-h_ln(5))

% test the difference between euler and rk2 

temp = 0.01; 
t = start:temp:stop;
y_rk = rk2(f,z,start,stop,temp);
y_euler = euler(f,z,start,stop,temp);

% take the difference 

diff = y_rk-y_euler; 

% print out the max error: 

print_diff = max(abs(diff))

%plotting the needed graphs:

figure(1)
plot(h,err,'r')%plot the error and show the linear decrease as a funtion of h
title('error v time-step (h)')



figure(2)
plot(t,diff,'r')
title('difference between the methods')

figure(3)
plot(h_ln, err_ln,'r')
title('log-log plot')

