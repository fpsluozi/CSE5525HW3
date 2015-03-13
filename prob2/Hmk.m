function [ H ] = Hmk( fm, K )
% Implementation of Hm[k] using Equation 6.141

M = size(fm, 1) - 2;
H = zeros(M, K);

for k = 1:K
    for m = 1:M
        if k < fm(m, 1)
            H(m, k) = 0;
        else if k <= fm(m+1, 1)
                H(m, k) = (k - fm(m, 1)) / (fm(m+1, 1) - fm(m, 1));
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

