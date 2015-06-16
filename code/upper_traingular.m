% A function which will preform Guassian elimination give a square nxn matrix, A as
% the input. Written by Austin Baird, UNC graduate applied math student

function[A] = upper_traingular(B)

% we need to find the size of B: 

temp = size(B); 

% temp now is a 1x2 array and we can use it to iterate: 

for i = 2:temp(1),
    for j = i:temp(1),
        B(j,:) = B(j,:) - B(j,i-1)*B(i-1,:)/B(i-1,i-1);
    end
end

A = B; 