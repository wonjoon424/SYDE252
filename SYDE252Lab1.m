clear all;
clc;
clear all;

[y,fs]=audioread('drumloop1.wav');
y = y(:,1);
dt = 1/fs;
t = 0:dt:(length(y)*dt)-dt;

%plot(t,y);
win_3 = win_average(3, y);
win_5 = win_average(5, y);
win_7 = win_average(7, y);
plot(t,y,'b', t,win_3,'r', t,win_5,'y', t,win_7,'g');
figure;
plot(t,y,t,abs(y));

audiowrite('drumloop1_new1.wav',win_7,fs);
