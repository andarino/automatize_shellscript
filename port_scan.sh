#!/bin/bash

if [ -z $1 ]; then 
	echo "[!] how to run: bash port_scan <ip> [!]"
	exit 0
fi 

if [ $1 ]; then
	ip=$1
	for i in $(seq 1 65535); do
		timeout 1 bash -c "echo > /dev/tcp/$ip/$i" 2>/dev/null && echo "Porta $i aberta" & done; wait 
fi
