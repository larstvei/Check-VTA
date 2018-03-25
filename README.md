# Model Checker for Virtually Timed Ambients

This is an implementation of a modal logic for virtually timed ambients in
Maude. To run the program, be sure to have the [Maude system
installed](http://maude.cs.illinois.edu/w/index.php?title=Maude_download_and_installation)
first.

To get started, run:

```sh
$ maude vta.maude
```

which loads the `vta.maude` source, and provides a Maude prompt, and should
display something similar to:

```
		     \||||||||||||||||||/
		   --- Welcome to Maude ---
		     /||||||||||||||||||\
	   Maude 2.7.1 built: Jun 27 2016 16:43:23
	    Copyright 1997-2016 SRI International
		   Mon Jan 22 15:30:39 2018
Maude>
```

The Maude prompt accepts [Maude
commands](http://maude.cs.uiuc.edu/maude2-manual/html/maude-manualch18.html),
of which the perhaps most useful are `rew`.


We provide a number of examples in the [examples](./examples) directory, all on
the form:

```
load ../vta.maude
rew P |= F .
q .
```

It loads the [vta](./vta.maude) calculus and modal logic, modelchecks a
virtually timed ambient `P` against a formula `F` and finally quits. We provide
a script `tester.sh` for running several analyses in parallel. It takes a
number of maude files as argument, and places the output in a `result`
directory.

If one wants to run all of the provided examples, it can be achieved with the
following:

```sh
./tester.sh examples/*.maude
```
