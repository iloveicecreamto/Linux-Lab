#!/bin/bash
#12 Write a script to generate all combinations of a, b and c.
echo Program to print all Combinations of A, B, C
for c1 in {a..c}
do
	for c2 in {a..c}
	do
		for c3 in {a..c}
		do
			echo -n " " "$c1$c2$c3"
		done
		echo
	done
done
