#!/bin/bash
# ログイン時に歓迎のメッセージをユーザーに表示するスクリプト

if [ "$#" -lt 1 ] ; then
    read "REPLY?Enter a name: " # For zsh
    name=$REPLY
    # exit 1
else
    name=$1
fi
echo "Hello $name"
# exit 0