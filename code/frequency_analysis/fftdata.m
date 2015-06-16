%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% this file will read in data from .txt file
% it will then take the fft of the data
% and plot the output
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% extract the data: 

A = importdata('resonance_pts.txt');


% split the data up into the signal and time arrays:
y = A(:,1); 
t = A(:,2); 

n = length(y);

% number of sample points: 

Fs = 1/abs((t(2)-t(3)));
start = 2; 
%nfft = 1024;   % length of the fft domain, should be a power of 2 

x = fft(y,n);

x = abs(x(start:n/2));% only want half of the data since fft is symmetric

f = (start-1:n/2-1)*Fs/n;   % frequency vector


%plotting output
figure(1);
plot(t,y);
title('Sine Wave Signal'); 
xlabel('time (s)');
ylabel('amplitude');

figure(2)
plot(f,x);
title('fft of signal')
xlabel('frequency')
ylabel('power')
