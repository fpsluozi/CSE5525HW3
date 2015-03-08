function ehfilter(L)
    avg = 60;
    len = 50;

    L2 = L(8,:) + L(9,:);
    L2 = L2 ./ 2;
    L2 = L2 - avg;

    i2 = max(size(L2))-len;
    for i=1:i2
        t = 0;
        for j=0:len
            t = t+ L2(i+j);
        end
        t = t/len;
        if (t >= 0)
            disp('True'); return
        end  
    end

    disp('False');
