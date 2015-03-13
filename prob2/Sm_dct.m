function [ c ] = Sm_dct( Xk, Hmk )
% Implementation of S[m] multiplying the squared magnitude of X[k] by Hm[k]
M = size(Hmk, 1);
S = zeros(M, 1);

X = real(Xk).^2 + imag(Xk).^2;
for m = 1:M
    S(m, 1) = sum(Hmk(m, :).* X');
    S(m, 1) = log(S(m, 1));
end

c = dct(S);

% Picking the first 13 coefficients
c = c(1:13);
% c = c(2:13);
end

