% We will solve the system of odes: x' = x+a*y, y' = y + b*x. Here the
% prime (') doesn't denote spacial deriviative it now denotes a time
% derivative. There are two quantities which are interacting and changing
% with time. 

function f = odefun(t,y)

%define the parameters: 

a = 0.1; 
b = 5.0;

% in a column vector we store each equation. If we had three euqations we
% could have three enteries here and so forth. 

f(1) = y(1)+a*y(2);
f(2) = y(2)+b*y(1);

f = f'

%f = [y(1)+a*y(2) ; y(2)+b*y(1)]; 

end