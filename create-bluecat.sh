#!/bin/bash
clean=$1
working_dir=${PWD}
cd ${working_dir}
if [ $clean == 1 ]; then
	echo "Cleaning old files, cahe and tmp"
	if [ -f "${working_dir}/BlueCat.iso" ]; then
		rm -f BlueCat.iso*
	fi
	rm -rf /var/cache/live/*
	rm -rf /var/tmp/*
fi
echo "Creating iso"
setenforce 0
sleep 1
livecd-creator --verbose --config=${working_dir}/bluecat.ks --fslabel=BlueCat --cache=/var/cache/live
setenforce 1
echo "Livecd-creator has finished"
if [ -f "${working_dir}/BlueCat.iso" ]; then
	echo "BlueCat has been created"
	echo "Creating md5 file"
	md5sum BlueCat.iso > BlueCat.iso.md5
	echo "Checking md5 file"
	md5sum -c BlueCat.iso.md5
	echo "Files created:"
	ls -l ${working_dir}/BlueCat*
else
	echo "There was a error and BlueCat.iso was not created"
fi
