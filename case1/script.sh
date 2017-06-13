#!/bin/sh
##This script compiles and execute the test.c file with hello-tp tracepoints:

#compilation:
#gcc -c -I. hello-tp.c
gcc -c recursive.c -finstrument-functions
gcc -o recursive recursive.o -finstrument-functions -llttng-ust -ldl
#./recursive

#execution:
lttng create test3
lttng enable-event -u -a
lttng add-context -u -t vpid -t vtid -t procname
lttng start

#LD_PRELOAD=/usr/local/lib/liblttng-ust-cyg-profile.so ./recursive
LD_PRELOAD=/usr/lib/x86_64-linux-gnu/liblttng-ust-cyg-profile.so ./recursive

lttng stop
lttng destroy
#cd /home/frank/lttng-traces/
#clear

#ls
~    
