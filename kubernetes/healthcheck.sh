#!/bin/bash
PORT=$1

while true
do
  TCPCHECK=$(telnet localhost $PORT & sleep 2 && killall telnet)
  if [ -z "$TCPCHECK" ]
  then
    killall echo "test"
  fi
done
