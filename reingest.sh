#!/usr/bin/env bash

nohup stellar-horizon-cmd db reingest range        1  2000000 > reingest-02000000.log &
nohup stellar-horizon-cmd db reingest range  2000000  4000000 > reingest-04000000.log &
nohup stellar-horizon-cmd db reingest range  4000000  6000000 > reingest-06000000.log &
nohup stellar-horizon-cmd db reingest range  6000000  8000000 > reingest-08000000.log &
nohup stellar-horizon-cmd db reingest range  8000000 10000000 > reingest-10000000.log &
nohup stellar-horizon-cmd db reingest range 10000000 12000000 > reingest-12000000.log &
nohup stellar-horizon-cmd db reingest range 12000000 14000000 > reingest-14000000.log &
nohup stellar-horizon-cmd db reingest range 14000000 16000000 > reingest-16000000.log &
nohup stellar-horizon-cmd db reingest range 16000000 18000000 > reingest-18000000.log &
nohup stellar-horizon-cmd db reingest range 18000000 20000000 > reingest-20000000.log &
nohup stellar-horizon-cmd db reingest range 20000000 22000000 > reingest-22000000.log &
nohup stellar-horizon-cmd db reingest range 22000000 24130000 > reingest-24130000.log &

nohup stellar-horizon-cmd db reingest range        1  2000000 > reingest-02000000.log &
nohup stellar-horizon-cmd db reingest range  2000000  4000000 > reingest-04000000.log &
nohup stellar-horizon-cmd db reingest range  4000000  6000000 > reingest-06000000.log &
nohup stellar-horizon-cmd db reingest range  6000000  8000000 > reingest-08000000.log &
nohup stellar-horizon-cmd db reingest range  8000000 10000000 > reingest-10000000.log &
nohup stellar-horizon-cmd db reingest range 10000000 12000000 > reingest-12000000.log &
nohup stellar-horizon-cmd db reingest range 12000000 14000000 > reingest-14000000.log &
nohup stellar-horizon-cmd db reingest range 14000000 16000000 > reingest-16000000.log &
nohup stellar-horizon-cmd db reingest range 16000000 18000000 > reingest-18000000.log &
nohup stellar-horizon-cmd db reingest range 18000000 20000000 > reingest-20000000.log &
nohup stellar-horizon-cmd db reingest range 20000000 22000000 > reingest-22000000.log &
nohup stellar-horizon-cmd db reingest range 22000000 24130000 > reingest-24130000.log &
