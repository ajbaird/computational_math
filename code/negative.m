% stores the ode that has real eigenvalues: 

function f = negative(t,y)
a = 0.5; 
b = 0.9;
c = -1.2; 
d = -1.7; 
f = [a*y(1)+b*y(2) ; c*y(1)+d*y(2)];
end