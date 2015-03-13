DOCUMENTATION PART  - EH FILTER

Instruction: 

Open and run main.m in Matlab.

Inputs:

Two sets of inputs are hard-coded in. rex_path loads all paths to the rexdata samples and, train_path the a-digit training samples used in Part 2.

Output:

Two arrays of "True" or "False" will appear in the console. "True" stands for the audo contains /eh/ and "False" the otherwise. In source code, variable 'verdict' stores the efficacy of all rexdata, and 'verdict2' the efficacy of all train digit data.

Breakdown:

- main.m

The launcher. It loads each wav file into energy sequence x and calls spect() and ehfilter().

- spect.m

The spectrum matrix generator reused from in-class lab. It runs an FFT sampled with a window size of 256 and a shift of 20, and rescales each point on the spectrogram to a range of 1~64.

- ehfilter.m

The core part of the solution. As is indicated in the tutorial we have noticed that we need to extract the portion at row #8 for 500Hz. However, in practice, based on the discoveries of the colored spectrograms, we have found that the effective extraction section of /eh/ looks like a parallelogram spanning from row #8 to row #10 (500~625Hz) which returns the best filter results so far.

	Some parameters of the filter windows:

	Length: 48 frames
	Height: 3 rows, from 500Hz to 625Hz
	Diagonal shift: +13 frames per row 

We then scan through the spectrum matrix using the configuration above and check if there exists a section with an average score above 61.0. If there exists such a section, we identify that the audio does contain an /eh/ vowel.

Verdicts:

Rex: all passed. Stored in "verdict".
Digit train data: Two, Five, Six and Nine do not pass. Stored in "verdict2".