#!/bin/bash
# example usage: ./eval.sh < test.txt | grep pass | wc -l

while read line; do
    eval "test $line" && echo -n " pass" || echo -n " fail"
    echo " $line"
done
