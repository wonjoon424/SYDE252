function result = gauss_filt(WIN, sig_val)
    sigma = 1;
    size = WIN;
    x = linspace(-size / 2, size / 2, size);
    gaussFilter = exp(-x.^2 / (2*sigma^2));
    gaussFilter = gaussFilter / sum( gaussFilter );
    result = conv( sig_val, gaussFilter, 'same');
end
