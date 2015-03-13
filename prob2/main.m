% A basic MFCC implementation

train_path = ['../digits/1a.wav'; '../digits/2a.wav'; '../digits/3a.wav'; ...
    '../digits/4a.wav'; '../digits/5a.wav'; '../digits/6a.wav'; ...
    '../digits/7a.wav'; '../digits/8a.wav'; '../digits/9a.wav'; ...
    '../digits/oa.wav'; '../digits/za.wav'];

test_path = ['../digits/1b.wav'; '../digits/2b.wav'; '../digits/3b.wav'; ...
    '../digits/4b.wav'; '../digits/5b.wav'; '../digits/6b.wav'; ...
    '../digits/7b.wav'; '../digits/8b.wav'; '../digits/9b.wav'; ...
    '../digits/ob.wav'; '../digits/zb.wav'];

train_path_cells = cellstr(train_path);
test_path_cells = cellstr(test_path);

min_index = 0;
temp_min = zeros(11, 1);
temp_score = zeros(11, 11);
for i=1:11
    c_test = Loader(test_path_cells{i});
    min_score = 10000.0;
    for j=1:11
        c_train = Loader(train_path_cells{j});
        temp_score(j,i) = dtw(c_test,c_train);
        if (temp_score(j,i) < min_score)
            min_score = temp_score(j,i);
            min_index = j;
        end
    end
    temp_min(i,1) = min_index;
end

'Outputting the best matches, 10 for oh and 11 for zero'
temp_min

