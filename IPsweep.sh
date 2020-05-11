#!/bin/bash
if [ $1 == "" ]
then
echo "You forgot to add an IP address man"
echo "Syntax: ./IPsweep.sh 192.168.3"
else
for IP in {1..254};
do
ping -c 1 $1.$IP | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done 
fi
