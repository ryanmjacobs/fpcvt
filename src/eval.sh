#!/bin/bash

while read line; do
    eval "test $line" && echo -n " pass" || echo -n " fail"
done
