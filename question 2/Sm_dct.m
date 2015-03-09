function [ c ] = Sm_dct( Xk, Hmk )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
M = size(Hmk, 1);
S = zeros(M, 1);

X = real(Xk).^2 + imag(Xk).^2;
for m = 1:M
    S(m, 1) = sum(log(X' .* Hmk(m, :)));
end

c = dct(S);

end

