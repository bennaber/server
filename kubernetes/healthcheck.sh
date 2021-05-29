#!/bin/bash
APP=$1
PORT=$2

while true
do
  TCPCHECK=$(telnet localhost $PORT & sleep 2 && killall telnet)
  if [ -z "$TCPCHECK" ]
  then
    killall $APP
  fi
done
