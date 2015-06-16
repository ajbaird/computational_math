%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This script will take the fft of the function
% sin with sample set frequency and return the plot
% the frequencies  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Fs = 150;   % sampling frequency 
t = 0:1/Fs:1;   % discretized time domain

f = 20;   % frequency of our sin wave, change to experiment with results

y = sin(2*pi*f*t);   %function to transform 

nfft = 1024;   % length of the fft domain, should be a power of 2 

x = fft(y,nfft);  %x is our output, F_n

x = abs(x(1:nfft/2));% only want half of the data since fft is symmetric

f = (0:nfft/2-1)*Fs/nfft;   % frequency vector


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
