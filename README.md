# discoal
discoal is a coalescent simulation program capable of simulating models with recombination, selective sweeps, and demographic changes including population splits and admixture events.

To install discoal, clone this repository, cd into the directory, then assuming you have gcc and make installed on your system, simply type `make discoal`.


By all means read the documentation in `discoaldoc.pdf`, but for the impatient, typing `./discoal` will bring up a verbose usage statement:
```
$ ./discoal
usage: discoal_multipop sampleSize sampleNumber nSites -ws tau
parameters:
	 -t theta
	 -r rho (=zero if not specified)
	 -g conversionRate tractLengthMean (gene conversion)
	 -gr conversionToCrossoverRatio tractLengthMean (gene conversion where initiation rate = rho*conversionToCrossoverRatio)
	 -p npops sampleSize1 sampleSize2 etc.
	 -en time popnID size (changes size of popID)
	 -ed time popnID1 popnID2 (joins popnID1 into popnID2)
	 -ea time daughterPopnID founderPopnID1 founderPopnID2 admixProp (admixture-- back in time daughterPopnID into two founders)
	 -ws tau (sweep happend tau generations ago- stochastic sweep)
	 -wd tau (sweep happend tau generations ago- deterministic sweep)
	 -wn tau (sweep happend tau generations ago- neutral sweep)
	 -ls tau leftRho (stochastic sweep some genetic distance to the left of the simulated window--specified by leftRho)
		 similarly, ld and ln simulate deterministic and neutral sweeps to the left of the window, respectively
	 -f first frequency at which selection acts on allele (F0; sweep models only)
	 -uA rate at which adaptive mutation recurs during the sweep phase (sweep models only)
	 -a alpha (=2Ns)
	 -x sweepSite (0-1)
	 -M migRate (sets all rates to migRate)
	 -m popnID1 popnID2 migRate (sets migRate from popnID1 to popnID2)
	 -Pt low high (prior on theta)
	 -Pr low high (prior on rho)
	 -Pre mean uppreBound (prior on rho -- exponentially distributed but truncated at an upper bound)
	 -Pa low high (prior on alpha)
	 -Pu low high (prior on tau; sweep models only)
	 -PuA low high (prior on uA; sweep models only)
	 -Px low high (prior on sweepSite; sweep models only)
	 -Pf low high (prior on F0; sweep models only)
	 -Pe1 lowTime highTime lowSize highSize (priors on first demographic move time and size)
	 -Pe2 lowTime highTime lowSize highSize (priors on second demographic move time and size)
	 Note: all time units are 2N_0 generations!!! ```
