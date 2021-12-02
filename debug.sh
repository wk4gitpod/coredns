#!/bin/bash

set -x 
killall coredns
./coredns & 
apid=$!
sleep 1 
nslookup -port=5300 info.example.org 127.0.0.1
# nslookup -port=5300 info.example.orgc 127.0.0.1
sleep 2
kill $apid