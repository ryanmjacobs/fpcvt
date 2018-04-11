#!/bin/bash
set -e

iverilog -o a.out *.v
vvp -n a.out
