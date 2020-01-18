 %% STFT based classification
 co_stft = zeros(55,9);
 for i = 1:55
    t_1 = -pi/4   ;
    t_2 = pi/4 + pi/6;
    t_3 = -pi/2 - pi/5;
    mpoles =[0.85*exp(1i*t_1), 0.85*exp(1i*t_1),  0.73*exp(1i*(t_2)), 0.73*exp(1i*(t_3))];
    [co,err] = mt_coeffs(A(i,:),mpoles);
    co_stft(i,1:4) = abs(co);
%     co_stft(i,5)= mean(abs(co));
%     co_stft(i,6)= median(abs(co));
%     co_stft(i,7)= max(abs(co));
%     co_stft(i,8)= min(abs(co));
%     co_stft(i,9)= std(abs(co));
end