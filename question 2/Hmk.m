function [ H ] = Hmk( fm, K )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

M = size(fm, 1) - 2;
H = zeros(M, K);

for k = 0:K-1
    for m = 1:M
        if k < fm(m, 1)
            H(m, k) = 0;
        else if k <= fm(m+1, 1)
                H(m, k) = (k - fm(m, 1)) / (fm(m+1, 1) - f(m, 1));
            else if k <= fm(m+2, 1)
                    H(m, k) = (fm(m+2, 1) - k) / (fm(m+2) - fm(m+1));
                else
                    H(m, k) = 0;
                end
            end
        end
    end
end


end

