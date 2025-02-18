#!/bin/bash
usage="Usage: search.sh FILE KEY_WORD OPERATION"

if [ ! "$#" -eq 3 ] ; then
    echo "$usage"
    # exit 2
fi

[ ! -f "$1" ] && exit 3

case "$3" in
    [cC])
        mesg="$1 の中で $2 にマッチする行数を数えます"
        opt="-c"
    ;;
    [pP])
        mesg="$1 の中で $2 にマッチする行を表示します"
        opt=""
    ;;
    [dD])
        mesg="$1 から $2 にマッチする行を除いてすべてを表示します"
        opt="-v"
    ;;
    *)
        echo "$1 $2 $3 を評価できません"
        # exit 1
    ;;
esac
echo $mesg
grep $opt $2 $1