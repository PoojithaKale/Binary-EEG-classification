figure;hold on
stem(co_stft(6,:));stem(co_stft(7,:));stem(co_stft(8,:));stem(co_stft(9,:));stem(co_stft(10,:));%stem(co_stft(11,:))
grid on
hold off


figure;hold on
stem(co_stft(16,:));stem(co_stft(17,:));stem(co_stft(18,:));stem(co_stft(19,:));stem(co_stft(20,:));stem(co_stft(21,:))
grid on
hold off
%%
x = 1:9;
y = co_stft(7,:);
polyfit(x,y,3)



%%
x=1:9;
y=1:9;
polyfit(x,y,2)