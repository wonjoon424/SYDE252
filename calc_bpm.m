function bpm = calc_bpm ( sig_val, t )
    b = abs( sig_val );
    
    for i = 1:1000      % apply multiple windowed average to smooth out the values
        b = win_average(300,b); 
    end
    
    b = med_filter( 500, b );   % apply median filter to further smooth out the values
    
    [pk, loc] = findpeaks(b);   % calculate the peak of the curves
    
    samplediff = zeros(1,length(loc)-1);
    
    for i=1:length(loc)-1
        samplediff(i) = t(loc(i+1)) - t(loc(i));
    end

    figure;
    plot(t, sig_val, 'b', t, b, 'g', t(loc), pk, 'or');
    title('Determining Number of Beats in tapestry.wav');
    xlabel('Time(s)');
    ylabel('Energy');
    legend('Original', 'Filtered', 'Peaks(Beats)');
    
    bpm = 60 / mean(samplediff);
end