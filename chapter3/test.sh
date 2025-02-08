#!/bin/bash
if ! [ "mokhatr" = "Mokhtar" ]
then
    echo "These are not same word"
else
    echo "These are same word"
fi

if [ "mokhatr" > "Mokhtar" ] # For zsh
then
    echo "Length of arg1 is longer than arg2"
else
    echo "Length of arg1 is not longer than arg2"
fi

if [ -n "mokhatr" ]
then
    echo "Length of arg is longer than zero"
else
    echo "Length of arg1 is not longer than zero"
fi

if [ -z "mokhatr" ]
then
    echo "Length of arg is zero"
else
    echo "Length of arg1 is not zero"
fi
