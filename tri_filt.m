function result = tri_filt(WIN, sig_val)
    triFilter = triang(WIN);
    triFilter = triFilter ./ sum( triFilter );
    result = conv( sig_val, triFilter, 'same');
end