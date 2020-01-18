t_1=-pi/4   ;
t_2=pi/4 + pi/6;
t_3=-pi/2 - pi/5;
mpoles=[0.85*exp(1i*t_1), 0.85*exp(1i*t_1),  0.73*exp(1i*(t_2)), 0.73*exp(1i*(t_3))];
err = 0;
co1 = zeros(1,4);
[co1,err] = mt_coeffs(A(5,:),mpoles);
sig_mt = mt_generate(201056, mpoles, co1);
%figure
%plot(1:1:201056, real(A(5,:)), 'g', 1:1:201056, real(sig_mt), 'r')

[co2,err2] = mt_coeffs(A(10,:),mpoles);
sig_mt2 = mt_generate(201056, mpoles, co2);
%figure
%plot(1:1:201056, real(A(10,:)), 'g', 1:1:201056, real(sig_mt2), 'r')

[co3,err3] = mt_coeffs(A(55,:),mpoles);
sig_mt3 = mt_generate(201056, mpoles, co3);
%figure
%plot(1:1:201056, real(A(55,:)), 'g', 1:1:201056, real(sig_mt3), 'r')

[co4,err4] = mt_coeffs(A(35,:),mpoles);
sig_mt4 = mt_generate(201056, mpoles, co4);
%figure
%plot(1:1:201056, real(A(35,:)), 'g', 1:1:201056, real(sig_mt4), 'r')

plot(1:1:201056, real(sig_mt),1:1:201056, real(sig_mt3),1:1:201056, real(sig_mt2),1:1:201056, real(sig_mt4))
legend('seizure','Non-seizure','seizure','Non-seizure')
xlim([1 201056])