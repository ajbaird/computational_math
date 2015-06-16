from numpy import sin, linspace, pi
from pylab import plot, show, title, xlabel, ylabel, subplot
from scipy import fft, arange
import matplotlib.pyplot as plt 
import numpy as np

def plotSpectrum(y,Fs):
 """
 Plots a Single-Sided Amplitude Spectrum of y(t)
 """
 n = len(y) # length of the signal
 k = arange(n)
 T = n/Fs
 frq = k/T # two sides frequency range
 frq = frq[range(n/2)] # one side frequency range

 Y = fft(y)/n # fft computing and normalization
 Y = Y[range(n/2)]
 
 plot(frq,abs(Y),'r') # plotting the spectrum
 xlabel('Freq (Hz)')
 ylabel('|Y(freq)|')

Fs = 150.0;  # sampling rate
Ts = 1.0/Fs; # sampling interval
t = arange(0,1,Ts) # time vector

ff = 5.5;   # frequency of the signal
y = sin(2*pi*ff*t)


fig_width_pt = 360.0      #this is the width of the figure in latex, make sure its up to date to avoid scaling issues. 
inches_in_pt = 1.0/72.27      #This computes inches in a single point 
golden_mean = (np.sqrt(5)-1.0)/2.0    #This makes the height to width ratio pretty
fig_width = fig_width_pt*inches_in_pt    #width of figure
fig_height = golden_mean*fig_width    # height of figure
fig_size = [fig_width,fig_height]    #putting these in an array 

#change parameters

plt.rc('font', family='serif')
params = {'backend': 'ps',
          'axes.labelsize': 10,
          'text.fontsize': 10,
          'legend.fontsize': 10,
          'xtick.labelsize': 8,
          'ytick.labelsize': 8,
          'text.usetex': True,
          'figure.figsize': fig_size}

plt.rcParams.update(params)



subplot(2,1,1)
plot(t,y)
xlabel('Time')
ylabel('Amplitude')
subplot(2,1,2)
plotSpectrum(y,Fs)
plt.savefig('freq.eps', bbox_inches='tight')

show()
