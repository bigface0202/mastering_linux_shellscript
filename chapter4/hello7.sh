#!/bin/bash
source $HOME/snippets/color
if [ "$#" -lt 1 ] ; then
    echo -e "${RED}Usage: $0 <name>$RESET"
    # exit 1
fi
echo -e "${GREEN}Hello $1$RESET"
# exit 0