#!/bin/bash
arg1=12
arg2=10
if [ "$arg1" -gt "$arg2" ]
then
    echo "$arg1 is greater than $arg2"
else
    echo "$arg1 is not greater than $arg2"
fi