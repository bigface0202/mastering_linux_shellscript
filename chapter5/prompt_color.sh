#!/bin/bash
# ログイン時に歓迎のメッセージをユーザーに表示するスクリプト
shopt -s nocasematch # 大文字と小文字の区別をオフ Only for bash
read "REPLY?Type color or mono for script output: "
if [[ $REPLY =~ colou?r ]] ; then
    source $HOME/snippets/color
fi
# パラメーターが設定されていない場合はモノクロ表示になる
echo -e "${GREEN}This is $0 $RESET"
shopt -u nocasematch # Only for bash
