function syll = find_syll ( sig_val, t )
    b = abs( sig_val );

    for i = 1:750      % apply multiple windowed average to smooth out the values
        b = win_average(100,b); 
    end
    % %
    [pk, loc] = findpeaks(b);
    
    figure;
    plot(t, sig_val, 'b', t, b, 'g', t(loc), pk, 'or');
    title('Determining Number of Syllables in tapestry.wav');
    xlabel('Time(s)');
    ylabel('Energy');
    legend('Original', 'Filtered', 'Peaks(Syllables)');
    % %
    
    b = med_filter( 500, b );   % apply median filter to further smooth out the values

    [pk, loc] = findpeaks(b);
    
    figure;
    plot(t, sig_val, 'b', t, b, 'g', t(loc), pk, 'or');
    title('Determining Number of Syllables in tapestry.wav');
    xlabel('Time(s)');
    ylabel('Energy');
    legend('Original', 'Filtered', 'Peaks(Syllables)');
    
    syll = length(pk);
end