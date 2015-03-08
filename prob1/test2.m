[x,fs,nbits]=wavread('rex8.wav');
plot(x);
sound(x,fs);


L = spect(x);

axis([1,size(L,2),1,128]);
axis([1500 2000 1 128]);

pcolor(L); shading('flat');
% surf(L); shading('flat');
colormap(jet)
