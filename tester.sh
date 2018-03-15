#!/usr/bin/env bash

for f in $@
do
    (maude $f > "results/$(basename $f .maude).out" ; echo "$f done!") &
done

for p in `jobs -p`
do
    wait $p
done

