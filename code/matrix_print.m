% function to print out the terms of a mxn matrix can be a lead in to an assignment 
% to have students program gaussian elimination
% Takes as input a matrix A and its dimensions m, n
% illustration of passing arrays into functions and manipulating them 
% Austin Baird math 290L 



function[] = matrix_print(m,n,A)

for i = 1:m,
    for j = 1:n,
        disp(A(i,j));
    end
end
end