function [ fm ] = Function_m( M )
% Function f[m]

fl = 0;
fh = 4000;
N = 400;
Fs = 16000;
fm = zeros(M+2, 1);
Bfl = B(fl);
Bfh = B(fh);

for i= 1:M+2
    fm(i, 1) = (N/Fs) * Binv(Bfl + (i-1)*((Bfh - Bfl) / (M+1)));
end

end

