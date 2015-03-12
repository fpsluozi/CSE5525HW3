train_path = ['../digits/1a.wav'; '../digits/2a.wav'; '../digits/3a.wav'; ...
    '../digits/4a.wav'; '../digits/5a.wav'; '../digits/6a.wav'; ...
    '../digits/7a.wav'; '../digits/8a.wav'; '../digits/9a.wav'; ...
    '../digits/oa.wav'; '../digits/za.wav'];
train_path_cells = cellstr(train_path);

test_path1 = '../digits/ob.wav';
c_test = Loader(test_path1);

min_score = 10000.0;
min_index = 0;
temp_min = zeros(11, 1);
for i=1:11
   c_train = Loader(train_path_cells{i});
   temp_min(i, 1) = dtw(c_test,c_train);
   if (temp_min(i, 1) < min_score)
       min_score = temp_min(i, 1);
       min_index = i;
   end
end
% c_train_1 = Loader(train_path1);


% dtw(c_test_1,c_train_1)

