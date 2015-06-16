% This program will print out 1 to 10 on the screen. Austin Baird 
% The purpose is to see the use of for loops and if statements 

clear; 
clc; 


for i = 1:10, % This will iterate the 'body' for all the values, i, achieved here 
    fprintf('%f\n',i)  % print the value of i to the screen
end

fprintf('now using an if statement \n')

%using an if statement in the body is a good way to get things to work the
%way you want

for i = 1:10, 
    if i>5,  % This 'body' will only execute if i is greater than 5
        fprintf('%f\n',i)
    end
end