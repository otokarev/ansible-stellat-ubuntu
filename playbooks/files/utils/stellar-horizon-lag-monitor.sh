#!/usr/bin/env bash

while true;
do
    sleep 10;
    out="$(curl -s localhost:8000)" \
    && latest_history="$(echo $out |  sed -n 's/.*"history_latest_ledger": \([0-9]*\),.*/\1/p')" \
    && latest_core="$(echo $out |  sed -n 's/.*"core_latest_ledger": \([0-9]*\),.*/\1/p')" \
    && let "delta=$latest_core-$latest_history" 1;
    RET="$?";
    if [ "$RET" -gt 0 ]; then
        echo "100" > /tmp/stellar-horizon-gap;
    else
        echo "${delta}" > /tmp/stellar-horizon-gap;
    fi;
done;
