function med = med_filter(WIN, sig_val)

    med = zeros(size(sig_val));
    tmp_med = zeros(1, WIN);
    mid = ceil(WIN/2);
    for i = 1:length(sig_val)
        
        tmp_med(3) = sig_val(i);
        
        for j = 1:floor(WIN / 2)
            % Left side of the window
            if ((i-j)>0)           
                tmp_med(mid-j) = tmp_med(mid-j) + sig_val(i - j);
            else
                tmp_med(mid-j) = tmp_med(mid-j) + sig_val(i);
            end
            % Right side of the window
            if ((i+j)>length(sig_val))
                tmp_med(mid+j) = tmp_med(mid+j) + sig_val(i);
            else
                tmp_med(mid+j) = tmp_med(mid+j) + sig_val(i + j);
            end
        end
        med(i) = median(tmp_med);
    end
    
end
