t_1=-pi/4   ;
t_2=pi/4 + pi/6;
t_3=-pi/2 - pi/5;
mpoles=[0.85*exp(1i*t_1), 0.85*exp(1i*t_1),  0.73*exp(1i*(t_2)), 0.73*exp(1i*(t_3))];

[co,err] = biort_coeffs(A(5,:),mpoles)
sig_mt11 = biort_generate(201056, mpoles, co);
figure
plot(1:1:201056, real(A(5,:)), 'g', 1:1:201056, real(sig_mt11), 'r')

[co2,err2] = biort_coeffs(A(10,:),mpoles)
sig_mt12 = biort_generate(201056, mpoles, co2);
figure
plot(1:1:201056, real(A(10,:)), 'g', 1:1:201056, real(sig_mt12), 'r')

[co3,err3] = biort_coeffs(A(55,:),mpoles)
sig_mt13 = biort_generate(201056, mpoles, co3);
figure
plot(1:1:201056, real(A(55,:)), 'g', 1:1:201056, real(sig_mt13), 'r')

[co4,err4] = biort_coeffs(A(35,:),mpoles)
sig_mt14 = biort_generate(201056, mpoles, co4);
figure
plot(1:1:201056, real(A(35,:)), 'g', 1:1:201056, real(sig_mt14), 'r')

plot(1:1:201056, real(sig_mt11),1:1:201056, real(sig_mt13),1:1:201056, real(sig_mt12),1:1:201056, real(sig_mt14))
legend('seizure','Non-seizure','seizure','Non-seizure')
xlim([1 201056])