#!/usr/bin/env bash
for i in $(seq 1 $(cat $1 | wc -l))
do
    OUTPUT="$(head -n $i $1 | tail -n 1)"
    echo $OUTPUT
done
