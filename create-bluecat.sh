#!/bin/bash
# Title           :create-bluecat.sh
# Description     :This script will create BlueCat.
# Author		  :Luis Sequeira
# Date            :11/05/2020
# Version         :2.2    
# Usage		      :./create-bluecat.sh --games --clean
#==============================================================================

working_dir=${PWD}

while [ -n "$1" ]; do
    case "$1" in
	   --games)
            echo "==========================="
            echo "BlueCat Games will be created"
            echo "==========================="
            GAMES=true
            ;;
        --clean)
            echo "==========================="
            echo "Old files, cahe and tmp will be clean"
            echo "==========================="
            CLEAN=true
            ;;
        *)
            echo "==========================="
            echo "Option $1 not recognized"
            echo "==========================="
            ;;
    esac
    shift
done

if [ ! -z "$CLEAN" ]; then
	echo "==========================="
	echo "Cleaning old files, cahe and tmp"
	echo "==========================="
	if [ -f "${working_dir}/BlueCat.iso" ]; then
		rm -f BlueCat.iso*
	fi
	if [ -f "${working_dir}/BlueCat-Games.iso" ]; then
		rm -f BlueCat-Games.iso*
	fi
	rm -rf /var/cache/live/*
	rm -rf /var/tmp/*
fi

echo "==========================="
echo "Creating iso"
echo "==========================="

setenforce 0
sleep 1

if [ ! -z "$GAMES" ]; then
	livecd-creator --verbose \
		--config=${working_dir}/bluecat-games.ks \
		--fslabel=BlueCat-Games \
		--cache=/var/cache/live
else
	livecd-creator --verbose \
		--config=${working_dir}/bluecat.ks \
		--fslabel=BlueCat \
		--cache=/var/cache/live
fi

setenforce 1

echo "==========================="
echo "Livecd-creator has finished"
echo "==========================="

if [ ! -z "$GAMES" ]; then
	if [ -f "${working_dir}/BlueCat-Games.iso" ]; then
		echo "BlueCat Games has been created"
		echo "Creating md5 file"
		md5sum BlueCat-Games.iso > BlueCat-Games.iso.md5
		echo "Checking md5 file"
		md5sum -c BlueCat-Games.iso.md5
		echo "Files created:"
		ls -l ${working_dir}/BlueCat*
	else
		echo "There was a error and BlueCat.iso was not created"
	fi
else
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
fi
