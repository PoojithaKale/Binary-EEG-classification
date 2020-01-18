figure;hold on 
plot(energy(6,:));plot(energy(7,:));plot(energy(8,:));plot(energy(9,:));plot(energy(10,:)),;plot(energy(11,:))
legend('seizure','Non-seizure','seizure','Non-seizure')
hold off
if energy(5,:)>=0.999
    fprintf('1 \n')
else
    fprintf('0 \n')   
end

%%
figure;hold on
plot(coeff_var(6,:));plot(coeff_var(7,:));plot(coeff_var(8,:));plot(coeff_var(9,:));plot(coeff_var(10,:));plot(coeff_var(11,:))
legend('seizure','Non-seizure','seizure','Non-seizure')
hold off
min(min(coeff_var(6:10,:)))
min(min(energy(6:10,:)))
& coeff_var(j,:)>= -42600
if energy(j,:)>=0.995
    fprintf('1 \n')
else
    fprintf('0 \n')   
end

%%
s1 = spectrogram(A(5,:));
figure;plot(s1)
s2 = spectrogram(A(55,:));
figure; plot(s2)
s3 = spectrogram(A(10,:));
figure; plot(s3)
s4 = spectrogram(A(35,:));
figure; plot(s4)

%%
s1(:,1);
s1(:,2);
s1(:,3);
s1(:,4);
s1(:,5);
s1(:,6);
s1(:,7);
%%
hold on
plot(s1(:,1))
plot(s1(:,2))
plot(s1(:,3))
plot(s1(:,4))
plot(s1(:,5))
plot(s1(:,6))
plot(s1(:,7))
legend('column1','column2','column3','column4','column5','column6','column7')

%%
hold on
plot(s2(:,1))
plot(s2(:,2))
plot(s2(:,3))
legend('column1','column2','column3')
%plot(s2(:,4))
%plot(s2(:,5))
%plot(s2(:,6))
%plot(s2(:,7))
%legend('column1','column2','column3','column4','column5','column6','column7')
%%

p=poles(A(5,:));
