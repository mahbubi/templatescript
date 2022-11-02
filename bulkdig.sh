#!/bin/bash
filename='dnsdig.txt' # name of file with IPs to handle
nameserver='8.8.8.8' # nameserver to query

for ip in `cat $filename`
do
echo 'Handling DNS for' $ip
dig $ip +short
done
