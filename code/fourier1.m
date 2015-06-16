% sample the sin(t) function a few different times and try and extract the
% frequency: 

clear; 
clc; 

%t = 0:0.01:4;



%plot(t,f(t))

% now sample at a couple different points and graph with dots

T = 5;    % Total time  
Sr = .01;    % sample rate 
tnew = 0:Sr:T;    % time vector holding values
N = length(tnew);    % total number of values sampled: = N 
f = 2;    % frequency for the periodic function being sampled


% get the function values: 

y = sin(2*pi*tnew*f);

% plot the function and its sampled points (to see data) 
figure(1)
subplot(2,1,1)
plot(tnew,y,'-b')
subplot(2,1,2)
plot(tnew,y,'--ro')

% we now have a collection of sample points, y()  


% we now want to compute the dft: 

w = exp((-2*pi*1i)/N);    % this is our basis, we can now form a matrix:

% now create our matrix:
for j = 1:N,
    for i = 1:N,
        M(i,j) = w^((i-1)*(j-1));
    end
end


% we now want to mutiply m*y to get our frequency: 

F = M*y';


% graph the result: 

Freal = abs(real(F));

figure(2)
plot(Freal(1:N/2)','r--')
% 
% % compare to the fft transform:

nfft = 1024;   % length of the fft domain, should be a power of 2 

x = fft(y,nfft);  %x is our output, F_n

x = abs(x(1:nfft/2));% only want half of the data since fft is symmetric

f = (0:nfft/2-1)*N/nfft;   % frequency vector

figure(3)
plot(f,x)

    
