#!/usr/bin/env bash
function draw_line {
    # date >> something;
    # git add .;
    # git commit -m "$1";
    echo $1
}

cat $1 | xargs -I '{}' draw_line '{}'
rm something
