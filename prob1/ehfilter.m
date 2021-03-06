function result=ehfilter(L)
    avg = 61.0; 
    len = 48.0; 
    diag = 13;
    % We are taking a diagonal section with a diagonal shift of 13 from row
    % 8 to row 10

    L2 = L(8,1:length(L)-diag*2) + L(9,diag+1:length(L)-diag) + L(10,diag*2+1:length(L));
    L2 = L2 ./ 3;
    L2 = L2 - avg;

    i2 = max(size(L2))-len;
    for i=1:i2
        t = 0;
        for j=0:len
            t = t+ L2(i+j);
        end
        t = t/len;
        if (t >= 0)
            result = 'True'; return;
        end  
    end

    result = 'False';
