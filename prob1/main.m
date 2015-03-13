rex_path = ['../rexdata/rex1.wav '; '../rexdata/rex2.wav '; '../rexdata/rex3.wav '; ...
    '../rexdata/rex4.wav '; '../rexdata/rex5.wav '; '../rexdata/rex6.wav '; ...
    '../rexdata/rex7.wav '; '../rexdata/rex8.wav '; '../rexdata/rex9.wav '; ...
    '../rexdata/rex10.wav'];
rex_path_cells = cellstr(rex_path);
verdict = cell(10,1);

for i=1:10
    clear x; clear L;
    wav_path = rex_path_cells{i};
    [x,fs,nbits] = wavread(wav_path);
    x = x(:,1); % in case it's stereo
    L = spect(x);
    
    verdict{i}=ehfilter(L);
end

train_path = ['../digits/1a.wav'; '../digits/2a.wav'; '../digits/3a.wav'; ...
    '../digits/4a.wav'; '../digits/5a.wav'; '../digits/6a.wav'; ...
    '../digits/7a.wav'; '../digits/8a.wav'; '../digits/9a.wav'; ...
    '../digits/oa.wav'; '../digits/za.wav'];
train_path_cells = cellstr(train_path);
verdict2 = cell(11,1);
for i=1:11
    clear x; clear L;
    wav_path = train_path_cells{i};
    [x,fs,nbits] = wavread(wav_path);
    x = x(:,1); % in case it's stereo
    L = spect(x);

    verdict2{i}=ehfilter(L);
end

% Outputting the efficacies from rex data
verdict
% Outputting the efficacies from train data
verdict2
