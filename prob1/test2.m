wav_path = '../rexdata/rex6.wav';

[x,fs,nbits] = wavread(wav_path);

sound(x,fs);

x = x(:,1); % we recorded using stereo
L = spect(x);

axis([1,size(L,2),6,12]);
shading('flat');
colormap(hsv);

ehfilter(L);

