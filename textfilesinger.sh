#!/bin/bash

#
# ---------------- usage ---------------
#
# help:
#   textfilesinger.sh -h
#   textfilesinger.sh -help
#   textfilesinger.sh h
#   textfilesinger.sh help
#
#
#

firstarg=$1

if [[ $firstarg = "-h" ]] || [[ $firstarg = "-help" ]] || [[ $firstarg = "h" ]] || [[ $firstarg = "help" ]]; then
    echo ""
    echo "---------- what this script does: -----------"
    echo " reads the content of a file out loud"
    echo ""
    echo "---------- usage: ---------------------------"
    echo "textfilesinger.sh filename.txt -->> text to speech of file"
    echo ""

    exit 1
fi

if [[ $firstarg = "" ]]; then
    echo "Please specify a file name..."

    exit 1
fi

while read name; do say ${name}; done < $firstarg


exit 0
