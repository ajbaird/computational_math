% stores the odes to use in the trajectory file: 

function f = imaginary(t,y)

% parameters in our system: 

a = 2; 
b = -5;
c = 1;
d = -2;

f = [a*y(1)+b*y(2) ; c*y(1)+d*y(2)];
end

