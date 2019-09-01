#!/bin/bash
clean=$1
if [ $clean == 1 ]; then
	echo "Cleaning old files, cahe and tmp"
	cd /root
	if [ -f "/root/BlueCat.iso" ]; then
		rm -f BlueCat.iso*
	fi
	rm -rf /var/cache/live/*
	rm -rf /var/tmp/*
fi
echo "Creating iso"
setenforce 0
sleep 1
livecd-creator --verbose --config=/usr/share/spin-kickstarts/bluecat.ks --fslabel=BlueCat --cache=/var/cache/live
setenforce 1
echo "Livecd-creator has finished"
sleep 1
if [ -f "/root/BlueCat.iso" ]; then
	echo "BlueCat has been created"
	echo "Creating md5 file"
	md5sum BlueCat.iso > BlueCat.iso.md5
	echo "Checking md5 file"
	sleep 1
	md5sum -c BlueCat.iso.md5
else
	echo "BlueCat.iso does not exist"
fi
ls -l /root/BlueCat*
