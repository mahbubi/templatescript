#!/bin/bash
HOME=$(pwd)
HOSTS="www.google.com"
COUNT=10
SCRIPTNAME=$(basename "$0")
today=$(date '+%Y-%m-%d')
currtime=$(date '+%H:%M:%S')
msg=$(ping -c $COUNT $HOSTS | grep 'loss')
echo "[$today $currtime] ($HOSTS $COUNT) $msg" >> /$HOME/pingwatch.log
