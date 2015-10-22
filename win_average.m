function avg = win_average(AVG_WIN, sig_val)
    mask = ones(1, AVG_WIN)./AVG_WIN;
    avg = conv(sig_val, mask,'same');
end
