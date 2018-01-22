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
of which the perhaps most useful is `rew`. The following is an example of using
the `rew` command:

```
Maude> rew
'root[ sched 1 {0, 0, 0, 'request, 'vm}
     | tick | tick
     | 'request[ sched  0 {0, 0, 0, empty, empty}
                 | in('vm) . c . zero]
     | 'vm     [ sched  1/2 {0, 0, 0, empty, empty}
                 | open('request) . zero]]
|= <> 2 @ 'root ~ Consume .
```

For more examples, look to the `examples.maude` file located in this directory.
