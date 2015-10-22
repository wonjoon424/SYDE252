clear all;
clc;
clear all;

[y,fs]=audioread('ClayColoredRobin.wav');
y = y(:,1);
dt = 1/fs;
t = 0:dt:(length(y)*dt)-dt;

%plot(t,y);
% win_3 = win_average(3, y);
% win_5 = win_average(4, y);
% win_7 = win_average(7, y);
% plot(t,y,'b', t,win_5,'y');

figure;
gauss_filt20 = gauss_filt(4000, y);
plot(t,y,t,gauss_filt20);

figure;
G = fspecial('gaussian', 20, 1);
builtgauss = conv(y,G,'same');
plot(t,y,t,abs(y));
