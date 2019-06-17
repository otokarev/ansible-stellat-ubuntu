#!/usr/bin/env bash

mkfifo __fifo;
while true; do
    horizon_lag=`cat /tmp/stellar-horizon-gap`
    read line <__fifo | ([ $horizon_lag -lt 2 ] && echo -e "HTTP/1.1 200 OK\n\n" || echo -e "HTTP/1.1 500 Internal Server Error\n\n" ) | nc -lp 7777 >__fifo;
done;
