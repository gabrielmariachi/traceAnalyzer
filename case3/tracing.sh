#!/bin/sh
##This script compiles and execute the profile data:

lttng create test3
lttng enable-event -u -a
lttng add-context -u -t vpid -t vtid -t procname
lttng start

#LD_PRELOAD=/usr/local/lib/liblttng-ust-cyg-profile.so ./recursive
LD_PRELOAD=/usr/lib/x86_64-linux-gnu/liblttng-ust-cyg-profile.so ./recursive

lttng stop
lttng destroy

