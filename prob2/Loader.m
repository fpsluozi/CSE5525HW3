function c=Loader(wav_path)

[x,fs,nbits] = wavread(wav_path);

% sound(x,fs);
x = x(:,1); % we recorded using stereo

winsize=400;
shift=160;
c=1;
clear xk;
h = hamming(400);

for i=1:shift:length(x)-winsize
     xk=fft(x(i:i+winsize-1).*h,winsize);
end
k = length(xk);

m = 40;
fm = Function_m(m);
hmk = Hmk(fm, k);
c = Sm_dct(xk, hmk);

