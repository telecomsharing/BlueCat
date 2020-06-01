#!/bin/bash
# Title           :create-bluecat.sh
# Description     :This script will create BlueCat.
# Author	  :Luis Sequeira
# Date            :11/05/2020
# Version         :2.4
# Usage		  :./create-bluecat.sh --games --clean
#==============================================================================

start_time=`date +%s`
echo ""
echo "Starting at ${start_time}"
export BLUECAT_DIR=${PWD}

while [ -n "$1" ]; do
    case "$1" in
	   --games)
	    echo ""
            echo "==========================="
            echo "BlueCat Games will be created"
            echo "==========================="
            GAMES=true
            ;;
        --clean)
	    echo ""
            echo "==========================="
            echo "Old files, cahe and tmp will be clean"
            echo "==========================="
            CLEAN=true
            ;;
        *)
	    echo ""
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
	if [ -f "${BLUECAT_DIR}/BlueCat.iso" ]; then
		rm -f ${BLUECAT_DIR}/BlueCat.iso*
	fi
	if [ -f "${BLUECAT_DIR}/BlueCat-Games.iso" ]; then
		rm -f ${BLUECAT_DIR}/BlueCat-Games.iso*
	fi
	if [ -f "${BLUECAT_DIR}/BlueCat.log" ]; then
                rm -f ${BLUECAT_DIR}/BlueCat.log
        fi
        if [ -f "${BLUECAT_DIR}/BlueCat-Games.log" ]; then
                rm -f ${BLUECAT_DIR}/BlueCat-Games.log
        fi
	rm -rf /var/cache/live/*
	rm -rf /var/tmp/*
fi

echo "==========================="
echo "Creating iso"
echo "==========================="

setenforce 0

if [ ! -z "$GAMES" ]; then
	livecd-creator --verbose \
		--config=${BLUECAT_DIR}/bluecat-games.ks \
		--fslabel=BlueCat-Games \
		--cache=/var/cache/live \
		--logfile=${BLUECAT_DIR}/BlueCat-Games.log
else
	livecd-creator --verbose \
		--config=${BLUECAT_DIR}/bluecat.ks \
		--fslabel=BlueCat \
		--cache=/var/cache/live \
		--logfile=${BLUECAT_DIR}/BlueCat.log
fi

setenforce 1

echo "==========================="
echo "Livecd-creator has finished"
echo "==========================="

if [ ! -z "$GAMES" ]; then
	if [ -f "${BLUECAT_DIR}/BlueCat-Games.iso" ]; then
		echo "BlueCat Games has been created"
		echo "Creating md5 file"
		md5sum ${BLUECAT_DIR}/BlueCat-Games.iso > ${BLUECAT_DIR}/BlueCat-Games.iso.md5
		echo "Checking md5 file"
		md5sum -c ${BLUECAT_DIR}/BlueCat-Games.iso.md5
		echo "Files created:"
		ls -l ${BLUECAT_DIR}/BlueCat*
	else
		echo "There was a error and BlueCat.iso was not created"
	fi
else
	if [ -f "${BLUECAT_DIR}/BlueCat.iso" ]; then
		echo "BlueCat has been created"
		echo "Creating md5 file"
		md5sum ${BLUECAT_DIR}/BlueCat.iso > ${BLUECAT_DIR}/BlueCat.iso.md5
		echo "Checking md5 file"
		md5sum -c ${BLUECAT_DIR}/BlueCat.iso.md5
		echo "Files created:"
		ls -l ${BLUECAT_DIR}/BlueCat*
	else
		echo "There was a error and BlueCat.iso was not created"
	fi
fi

end_time=`date +%s`
runtime=$((end_time-start_time))
echo "Run time was ${runtime} seconds"
