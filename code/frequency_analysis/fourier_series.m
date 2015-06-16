%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% a script which plots the sawtooth function
% and its cooresponding fourier transform
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

a = 1;   % amplitude length of each sawtooth domain: 
T = 2; % period 
dx = 0.01;
x = [-5:dx:5];    % discretize the domain: 


% form the function: 

y = a*mod(x-1,T)-1; 



sum = 3;    % number of terms you'd like to sum 
fourier = 0; 
for i = 1:sum,
    fourier = fourier + (-2/(i*pi))*((-1)^i)*sin(i*x*pi)
end
%plot the functions 
figure(1);
plot(x,y);


% series approximation: 
figure(2);
plot(x,fourier);

% plot them both together: 
hold on 
figure(3); 
plot(x,y,x,fourier);
xlabel('x-domain');
ylabel('y-range');
legend; 

