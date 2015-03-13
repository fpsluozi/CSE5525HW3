function C=Loader(wav_path)

[x,fs,nbits] = wavread(wav_path);
x = x(:,1); % we recorded using stereo

winsize=400;
shift=160;
c = 1;
clear xk;
clear C;
h = hamming(400);

m = 40;
fm = Function_m(m);
hmk = Hmk(fm, winsize);

for i=1:shift:length(x)-winsize
     xk=fft(x(i:i+winsize-1).*h,winsize);
     C(:,c) = Sm_dct(xk, hmk);
     c = c+1;
end


