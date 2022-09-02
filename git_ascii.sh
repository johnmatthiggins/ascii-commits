#!/usr/bin/env bash
for i in $(seq 1 $(cat $1 | wc -l))
do
    echo $RANDOM >> something.txt
    git add .;
    git commit -m "$(tail -n $i $1 | head -n 1)";
done

rm something.txt
git add .;
git commit -m "ALIGNMENT COMMIT";

# if show parameter has been specified.
if [[ "$2" == "--show" ]]
then
    git log --oneline
fi
