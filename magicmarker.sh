#!/bin/bash
# MagicMarker
# A script for providing awesome color stuff
#
# Andrew Glenn
#
# Version: 0.2
# Release: 2013.01.24

# Set colors.
txtblk='\x1B[0;30m' # Black - Regular
txtred='\x1B[0;31m' # Red
txtgrn='\x1B[0;32m' # Green
txtylw='\x1B[0;33m' # Yellow
txtblu='\x1B[0;34m' # Blue
txtpur='\x1B[0;35m' # Purple
txtcyn='\x1B[0;36m' # Cyan
txtwht='\x1B[0;37m' # White
bldblk='\x1B[1;30m' # Black - Bold
bldred='\x1B[1;31m' # Red
bldgrn='\x1B[1;32m' # Green
bldylw='\x1B[1;33m' # Yellow
bldblu='\x1B[1;34m' # Blue
bldpur='\x1B[1;35m' # Purple
bldcyn='\x1B[1;36m' # Cyan
bldwht='\x1B[1;37m' # White
unkblk='\x1B[4;30m' # Black - Underline
undred='\x1B[4;31m' # Red
undgrn='\x1B[4;32m' # Green
undylw='\x1B[4;33m' # Yellow
undblu='\x1B[4;34m' # Blue
undpur='\x1B[4;35m' # Purple
undcyn='\x1B[4;36m' # Cyan
undwht='\x1B[4;37m' # White
bakblk='\x1B[40m'   # Black - Background
bakred='\x1B[41m'   # Red
bakgrn='\x1B[42m'   # Green
bakylw='\x1B[43m'   # Yellow
bakblu='\x1B[44m'   # Blue
bakpur='\x1B[45m'   # Purple
bakcyn='\x1B[46m'   # Cyan
bakwht='\x1B[47m'   # White
txtrst='\x1B[0m'    # Text Reset

function dot_update(){
    echo -ne "."
}

function successbox(){
    echo -e "[${bldylw}**${txtrst}] $@"
}

function infobox(){
    echo -e "[${bldcyn}??${txtrst}] $@"
}

function warningbox(){
    echo -e "[${bldred}!!${txtrst}] $@"
}

function log() {
        if [ "$logfile" != " " ]; then
                echo "`date '+%Y.%m.%d %H:%M:%S'` | $1" >> $logfile
        else
                echo "`date '+%Y.%m.%d %H:%M:%S'` | $1"
        fi
}         

function donebox(){
    echo -ne "[${bldgrn}DONE${txtreset}]"
}

