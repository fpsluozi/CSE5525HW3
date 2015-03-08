% [x,fs,nbits]=wavread('rexdata/rex7.wav');
[x,fs,nbits]=wavread('testrecording/eight.wav');

sound(x,fs);

x = x(:,1); % we recorded using stereo
L = spect(x);

% axis([1,size(L,2),1,128]);

pcolor(L);
% axis([1,size(L,2) 1 128]);
axis([1,size(L,2),6,12]);
shading('flat');
% surf(L); shading('flat');
colormap(hsv);

ehfilter(L);
% disp(L(:,6));
