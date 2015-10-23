function result = gauss_filt(WIN, sig_val)
    gaussFilter = gausswin(WIN);
    gaussFilter = gaussFilter ./ sum( gaussFilter );
    result = conv( sig_val, gaussFilter, 'same');
end
