function whis = find_whis ( sig_val, t )    
    b = abs( sig_val );

    for i = 1:750      % apply multiple windowed average to smooth out the values
        b = win_average(100,b); 
    end

    b = med_filter( 500, b );   % apply median filter to further smooth out the values

    [pk, loc] = findpeaks(b);

    figure;
    plot(t, sig_val, 'b', t, b, 'g', t(loc), pk, 'or');
    title('Determining Number of Whistles in ClayColoredRobin.wav');
    xlabel('Time(s)');
    ylabel('Energy');
    legend('Original', 'Filtered', 'Peaks(Whistles)');

    whis = length(pk);
end