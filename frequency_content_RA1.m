x=RA1;
fs = 2048;
L=length(x);
NFFT = 2^nextpow2(L);
f = fs/2*linspace(0,1,NFFT/2+1);
Y = fft(x,NFFT)/L;
plot(f,2*abs(Y(1:NFFT/2+1))) 
title('Single-Sided Amplitude Spectrum of y(t)')
xlabel('Frequency (Hz)')
ylabel('|Y(f)|')