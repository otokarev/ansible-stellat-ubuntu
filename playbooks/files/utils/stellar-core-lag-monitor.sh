#!/usr/bin/env bash

while true;
do
    sleep 10;
    T=`/usr/bin/stellar-core-cmd info | egrep '[[:blank:]]+"age" : [[:digit:]]+,'` \
        && [[ $T =~ [[:blank:]]([[:digit:]]+), ]];
    RET="$?";
    if [ "$RET" -gt 0 ]; then
        echo "100" > /tmp/stellar-core-gap;
    else
        echo "${BASH_REMATCH[1]}" > /tmp/stellar-core-gap;
    fi;
done;
