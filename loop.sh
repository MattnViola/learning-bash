#!/bin/bash


function file_chars {
    for i in $( ls ); do 
       echo "$i has $(cat -n $i | wc -c;)"
    done
}

file_chars

