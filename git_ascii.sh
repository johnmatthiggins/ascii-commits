#!/usr/bin/env bash
for i in $(seq 1 $(cat $1 | wc -l))
do
    echo $RANDOM >> something.txt
    git add .;
    git commit -m "$(head -n $i $1 | tail -n 1)";
done

rm something.txt
git add .;
git commit -m " ";
