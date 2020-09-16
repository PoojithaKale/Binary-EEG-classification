co_stft = zeros(55,2);
for i = 1:55
    
 x = A(i,:);                        % get the first channel

% define analysis parameters
fs = 2000;
xlen = length(x);                   % length of the signal
wlen = 1024;                        % window length (recomended to be power of 2)
hop = wlen/4;                       % hop size (recomended to be power of 2)
nfft = 4096;                        % number of fft points (recomended to be power of 2)

% perform STFT
[S, f, t] = stft(x, wlen, hop, nfft, fs);

% define the coherent amplification of the window
K = sum(hamming(wlen, 'periodic'))/wlen;

% take the amplitude of fft(x) and scale it, so not to be a
% function of the length of the window and its coherent amplification
S = abs(S)/wlen/K;

% correction of the DC & Nyquist component
if rem(nfft, 2)                     % odd nfft excludes Nyquist point
    S(2:end, :) = S(2:end, :).*2;
else                                % even nfft includes Nyquist point
    S(2:end-1, :) = S(2:end-1, :).*2;
end

% convert amplitude spectrum to dB (min = -120 dB)
S = 20*log10(S + 1e-6);

 co_stft(i,1)= mean(mean(S));
 co_stft(i,2)= median(median(S));
 end