# fpcvt (CS 152A) ![build status](https://travis-ci.org/ryanmjacobs/fpcvt.svg?branch=master)
## Two's complement to floating point conversion
![waveform](https://github.com/ryanmjacobs/fpcvt/raw/master/waveform.png)

### Simulation
```bash
$ cd src/
$ iverilog main_tb.v -o main.vvp
$ vvp main.vvp
VCD info: dumpfile main_tb.vcd opened for output.
in  = 000000101100 (44)
out =     00101011 (44)
s,e,v
0,2,11

...

in  = 000000101111 (47)
out =     00101100 (48)
s,e,v
0,2,12
```
### Viewing the waveform
```bash
$ gtkwave main_tb.vcd
```

Copyright &copy; 2018 Ryan Jacobs, Kevin Yi
