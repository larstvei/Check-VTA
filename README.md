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
of which the perhaps most useful is `frew`. A case study is provided in [auto-scaling-case-study.maude]([auto-scaling-case-study.maude]) which can be invoked with the following:

```
Maude> load auto-scaling-case-study.maude .
Maude> frew example .
```

