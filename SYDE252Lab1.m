%% SYDE252 - PROJECT: TIME DOMAIN ANALYSIS
% JONATHAN COREY LEE   20515908
% JEFF WONJOON JUN     20518718

clear all;
clc;
clear all;

%% INITIALIZATION
% Extracting data from ClayColoredRobin.wav
[y_ccr, fs_ccr] = audioread( 'ClayColoredRobin.wav' );
y_ccr = y_ccr(:,1);
dt_ccr = 1/fs_ccr;
t_ccr = 0:dt_ccr:(length(y_ccr)*dt_ccr)-dt_ccr;
% Extracting data from drumloop1.wav
[y_dl, fs_dl] = audioread( 'drumloop1.wav' );
y_dl = y_dl(:,1);
dt_dl = 1/fs_dl;
t_dl = 0:dt_dl:(length(y_dl)*dt_dl)-dt_dl;
% Extracting data from tapestry.wav
[y_ts, fs_ts] = audioread( 'tapestry.wav' );
y_ts = y_ts(:,1);
dt_ts = 1/fs_ts;
t_ts = 0:dt_ts:(length(y_ts)*dt_ts)-dt_ts;

%% TASK 1

% Averaging Filter
% Avaraging filter for ClayColoredRobin.wav
% win_ccr_5 = win_average(5, y_ccr);
% win_ccr_7 = win_average(7, y_ccr);
% win_ccr_9 = win_average(9, y_ccr);
% figure;
% subplot(3,1,1);
% plot(t_ccr, y_ccr,'b', t_ccr, win_ccr_5, 'g');
% title('Averaging Filtered ClayColoredRobin.wav with Window Size 5');
% ylabel('Energy');
% xlabel('Time(s)');
% legend('Original', 'Filter: Window Size 5');
% 
% subplot(3,1,2);
% plot(t_ccr, y_ccr,'b', t_ccr, win_ccr_7, 'g');
% title('Averaging Filtered ClayColoredRobin.wav with Window Size 7');
% ylabel('Energy');
% xlabel('Time(s)');
% legend('Original', 'Filter: Window Size 7');
%
% subplot(3,1,3);
% plot(t_ccr, y_ccr,'b', t_ccr, win_ccr_9, 'g');
% title('Averaging Filtered ClayColoredRobin.wav with Window Size 9');
% ylabel('Energy');
% xlabel('Time(s)');
% legend('Original', 'Filter: Window Size 9');
%
% Averaging filter for drumloop.wav
% win_dl_7 = win_average(7, y_dl);
% win_dl_9 = win_average(9, y_dl);
% win_dl_11 = win_average(11, y_dl);
% figure;
% subplot(3,1,1);
% plot(t_dl, y_dl,'b', t_dl, win_dl_7, 'g');
% title('Averaging Filtered drumloop.wav with Window Size 7');
% ylabel('Energy');
% xlabel('Time(s)');
% legend('Original', 'Filter: Window Size 7');
% 
% subplot(3,1,2);
% plot(t_dl, y_dl,'b', t_dl, win_dl_9, 'g');
% title('Averaging Filtered drumloop.wav with Window Size 9');
% ylabel('Energy');
% xlabel('Time(s)');
% legend('Original', 'Filter: Window Size 9');
% 
% subplot(3,1,3);
% plot(t_dl, y_dl,'b', t_dl, win_dl_11, 'g');
% title('Averaging Filtered drumloop.wav with Window Size 11');
% ylabel('Energy');
% xlabel('Time(s)');
% legend('Original', 'Filter: Window Size 11');

% Averaging filter for tapestry.wav
% win_ts_7 = win_average(7, y_ts);
% win_ts_9 = win_average(9, y_ts);
% win_ts_11 = win_average(11, y_ts);
% figure;
% subplot(3,1,1);
% plot(t_ts, y_ts,'b', t_ts, win_ts_7, 'g');
% title('Averaging Filtered tapestry.wav with Window Size 7');
% ylabel('Energy');
% xlabel('Time(s)');
% legend('Original', 'Filter: Window Size 7');
% 
% subplot(3,1,2);
% plot(t_ts, y_ts,'b', t_ts, win_ts_9, 'g');
% title('Averaging Filtered tapestry.wav with Window Size 9');
% ylabel('Energy');
% xlabel('Time(s)');
% legend('Original', 'Filter: Window Size 9');
% 
% subplot(3,1,3);
% plot(t_ts, y_ts,'b', t_ts, win_ts_11, 'g');
% title('Averaging Filtered tapestry.wav with Window Size 11');
% ylabel('Energy');
% xlabel('Time(s)');
% legend('Original', 'Filter: Window Size 11');

% Gaussian Filter
% Gaussian filter for ClayColoredRobin.wav
% gauss_ccr_7 = gauss_filt(7, y_ccr);
% gauss_ccr_9 = gauss_filt(9, y_ccr);
% gauss_ccr_11 = gauss_filt(11, y_ccr);
% figure;
% subplot(3,1,1);
% plot(t_ccr, y_ccr,'b', t_ccr, gauss_ccr_7, 'g');
% title('Gaussian Filtered ClayColoredRobin.wav with Window Size 7');
% ylabel('Energy');
% xlabel('Time(s)');
% legend('Original', 'Filter: Window Size 7');
% 
% subplot(3,1,2);
% plot(t_ccr, y_ccr,'b', t_ccr, gauss_ccr_9, 'g');
% title('Gaussian Filtered ClayColoredRobin.wav with Window Size 9');
% ylabel('Energy');
% xlabel('Time(s)');
% legend('Original', 'Filter: Window Size 9');
% 
% subplot(3,1,3);
% plot(t_ccr, y_ccr,'b', t_ccr, gauss_ccr_11, 'g');
% title('Gaussian Filtered ClayColoredRobin.wav with Window Size 11');
% ylabel('Energy');
% xlabel('Time(s)');
% legend('Original', 'Filter: Window Size 11');

% Gaussian filter for drumloop.wav
% gauss_dl_7 = gauss_filt(7, y_dl);
% gauss_dl_9 = gauss_filt(9, y_dl);
% gauss_dl_11 = gauss_filt(11, y_dl);
% figure;
% subplot(3,1,1);
% plot(t_dl, y_dl,'b', t_dl, gauss_dl_7, 'g');
% title('Gaussian Filtered drumloop1.wav with Window Size 7');
% ylabel('Energy');
% xlabel('Time(s)');
% legend('Original', 'Filter: Window Size 7');
% 
% subplot(3,1,2);
% plot(t_dl, y_dl,'b', t_dl, gauss_dl_9, 'g');
% title('Gaussian Filtered drumloop1.wav with Window Size 9');
% ylabel('Energy');
% xlabel('Time(s)');
% legend('Original', 'Filter: Window Size 9');
% 
% subplot(3,1,3);
% plot(t_dl, y_dl,'b', t_dl, gauss_dl_11, 'g');
% title('Gaussian Filtered drumloop1.wav with Window Size 11');
% ylabel('Energy');
% xlabel('Time(s)');
% legend('Original', 'Filter: Window Size 11');

% Gaussian filter for tapestry.wav
% gauss_ts_7 = gauss_filt(7, y_ts);
% gauss_ts_9 = gauss_filt(9, y_ts);
% gauss_ts_11 = gauss_filt(11, y_ts);
% figure;
% subplot(3,1,1);
% plot(t_ts, y_ts,'b', t_ts, gauss_ts_7, 'g');
% title('Gaussian Filtered tapestry.wav with Window Size 7');
% ylabel('Energy');
% xlabel('Time(s)');
% legend('Original', 'Filter: Window Size 7');
% 
% subplot(3,1,2);
% plot(t_ts, y_ts,'b', t_ts, gauss_ts_9, 'g');
% title('Gaussian Filtered tapestry.wav with Window Size 9');
% ylabel('Energy');
% xlabel('Time(s)');
% legend('Original', 'Filter: Window Size 9');
% 
% subplot(3,1,3);
% plot(t_ts, y_ts,'b', t_ts, gauss_ts_11, 'g');
% title('Gaussian Filtered tapestry.wav with Window Size 11');
% ylabel('Energy');
% xlabel('Time(s)');
% legend('Original', 'Filter: Window Size 11');

% Median Filter
% Median filter for ClayColoredRobin.wav
% med_ccr_5 = med_filter(5, y_ccr);
% med_ccr_7 = med_filter(7, y_ccr);
% med_ccr_9 = med_filter(9, y_ccr);
% figure;
% subplot(3,1,1);
% plot(t_ccr, y_ccr,'b', t_ccr, med_ccr_5, 'g');
% title('Median Filtered ClayColoredRobin.wav with Window Size 5');
% ylabel('Energy');
% xlabel('Time(s)');
% legend('Original', 'Filter: Window Size 5');
% 
% subplot(3,1,2);
% plot(t_ccr, y_ccr,'b', t_ccr, med_ccr_7, 'g');
% title('Median Filtered ClayColoredRobin.wav with Window Size 7');
% ylabel('Energy');
% xlabel('Time(s)');
% legend('Original', 'Filter: Window Size 7');
% 
% subplot(3,1,3);
% plot(t_ccr, y_ccr,'b', t_ccr, med_ccr_9, 'g');
% title('Median Filtered ClayColoredRobin.wav with Window Size 9');
% ylabel('Energy');
% xlabel('Time(s)');
% legend('Original', 'Filter: Window Size 9');

% Median filter for drumloop1.wav
% med_dl_5 = med_filter(5, y_dl);
% med_dl_7 = med_filter(7, y_dl);
% med_dl_9 = med_filter(9, y_dl);
% figure;
% subplot(3,1,1);
% plot(t_dl, y_dl,'b', t_dl, med_dl_5, 'g');
% title('Median Filtered drumloop1.wav with Window Size 5');
% ylabel('Energy');
% xlabel('Time(s)');
% legend('Original', 'Filter: Window Size 5');
% 
% subplot(3,1,2);
% plot(t_dl, y_dl,'b', t_dl, med_dl_7, 'g');
% title('Median Filtered drumloop1.wav with Window Size 7');
% ylabel('Energy');
% xlabel('Time(s)');
% legend('Original', 'Filter: Window Size 7');
% 
% subplot(3,1,3);
% plot(t_dl, y_dl,'b', t_dl, med_dl_9, 'g');
% title('Median Filtered drumloop1.wav with Window Size 9');
% ylabel('Energy');
% xlabel('Time(s)');
% legend('Original', 'Filter: Window Size 9');

% Median filter for tapestry.wav
% med_ts_5 = med_filter(5, y_ts);
% med_ts_7 = med_filter(7, y_ts);
% med_ts_9 = med_filter(9, y_ts);
% figure;
% subplot(3,1,1);
% plot(t_ts, y_ts,'b', t_ts, med_ts_5, 'g');
% title('Median Filtered tapestry.wav with Window Size 5');
% ylabel('Energy');
% xlabel('Time(s)');
% legend('Original', 'Filter: Window Size 5');audiowrite('5.wav',med_ts_5,fs_ts);
% 
% subplot(3,1,2);
% plot(t_ts, y_ts,'b', t_ts, med_ts_7, 'g');
% title('Median Filtered tapestry.wav with Window Size 7');
% ylabel('Energy');
% xlabel('Time(s)');
% legend('Original', 'Filter: Window Size 7');audiowrite('7.wav',med_ts_7,fs_ts);
% 
% subplot(3,1,3);
% plot(t_ts, y_ts,'b', t_ts, med_ts_9, 'g');
% title('Median Filtered tapestry.wav with Window Size 9');
% ylabel('Energy');
% xlabel('Time(s)');
% legend('Original', 'Filter: Window Size 9');audiowrite('9.wav',med_ts_9,fs_ts);


%% TASK 2 

% Determine the number of syllables in tapestry.wav
syll = find_syll(y_ts, t_ts);
fprintf('There are %d syllables in tapestry.wav.\n', syll);

% Determine the BPM for drumloop1.wav
bpm = calc_bpm(y_dl, t_dl);
fprintf('The BPM of drumloop1.wav is %d.\n', bpm);

% Count number of whistles in ClayColoredRobin.wav
whis = find_whis(y_ccr, t_ccr);
fprintf('There are %d whistles in ClayColoredRobin.wav.\n', whis);