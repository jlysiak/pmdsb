#!/bin/bash

ROOT=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)
BLOCKS=$ROOT/bar

function generate_status {
	OUTPUT=""
	for i in $(ls $BLOCKS); do
		OUTPUT="$($BLOCKS/$i) | $OUTPUT"
	done
	echo "${OUTPUT}"
}


INTERVAL=${INTERVAL:-2}
DEBUG=${DEBUG:-0}

while true; do
	STATUS="$(generate_status)"

	if [[ $DEBUG == 1 ]]; then
		echo "$STATUS"
	else
		xsetroot -name "$STATUS"
	fi
	sleep $INTERVAL
done
