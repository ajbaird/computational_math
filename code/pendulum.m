% function that holds the pendulum equations: 

function f = pendulum(t,y)

k = (9.8)/(3.0);
 
f = [y(2) ; -k*sin(y(1))];
end