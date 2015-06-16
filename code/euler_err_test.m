% testing euler error 

clear; 
clc; 
clf;

start = 0;
stop = 1000; 

lambda = -100; 

z = [0 1];
f = @(x,y) lambda*y;

h = 0.03; 
t = start:h:stop; 
g = size(t);
y = euler(f,z,start,stop,h); 

exact = @(t) exp(lambda*t);


err = max(abs(y-exact(t)));

err