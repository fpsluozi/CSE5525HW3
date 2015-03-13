DOCUMENTATION PART 2

Instruction:

Run main.m in Matlab, and the results will be in vector temp_min as well as in console.

Output:

The output is a set of integers representing each match for every test data. Notice 10 stands for oh, and 11 for zero.

Configuration:

Changing the value of m, the number of filters, in Loader.m doesn't affect the final results.

If we leave off the first cepstral coefficient, it doesn't make much difference. But so far, it will always give a right match. 100% accurate detections.

Breakdown:

In main.m, we used 'a' files as the templates, and for each time the program will find the most similar input file among the 11 'b' files, and record the index of that 'b' file.

B.m, Binv.m and Function_m.m is the implementation of function B ,Binv and f[m]. Then Hmk.m will compute the Hm matrix using Equation 6.141. After that, Sm_dct.m will compute S array, do DCT and pick the first 13 coefficients. These functions are invoked in Loader.m step by step.

After running from the first frame to the last frame, we get a C matrix.

Then, we will send these matrices to dtw function, compute the scores and store the result in vector temp_min. 