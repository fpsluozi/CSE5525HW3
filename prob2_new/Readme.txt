Instruction:

Run main.m in matlab, then you can check the results in vector temp_min.

Changing the value of m in Loader.m doesn't change the final results.

If we leave off the first cepstral coefficient, it doesn't make much difference, one right answer gets wrong, but another wrong one gets right.  

In most cases, it will give a right answer, more specific, 9 out of 11.

Code:

B.m, Binv.m and Function_m.m is the implementation of function B ,Binv and f[m]. Then Hmk.m will compute the Hm matrix. After that, Sm_dct.m will compute S array, do DCT and pick the first 13 coefficients. These functions are invoked in Loader.m step by step.

After running from the first frame to the last frame, we can get a C matrix.

Then, we will send these matrices to dtw function, compute the scores and store the result in vector temp_min.