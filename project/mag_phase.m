function 
inp = RA1;
fs = 2048;
NFFT = length(inp);
Y = fft(inp,NFFT);
F = ((0:1/NFFT:1-1/NFFT)*fs).';
magnitudeY = abs(Y);        % Magnitude of the FFT
phaseY = unwrap(angle(Y));  % Phase of the FFT

% Magnitude and frequency response of the EEG signal
dB_mag=mag2db(magnitudeY);
figure(1)
subplot(2,1,1);plot(F(1:NFFT/2),dB_mag(1:NFFT/2));title('Magnitude response of signal');
ylabel('Magnitude(dB)');xlim([0 101]);
subplot(2,1,2);plot(F(1:NFFT/2),phaseY(1:NFFT/2));title('Phase response of signal');
xlabel('Frequency in kHz');
ylabel('radians');xlim([0 101]);

s = spectrogram(inp);
figure(2)
spectrogram(inp,'yaxis');

end

