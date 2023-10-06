#!/usr/bin/env bash

# Checks for if a number is an Armstrong number.
main () {
    num=$*
    digits=${#num}
    sum=0

    for ((i=0; i<digits; i++)) do
        newNum=$((${num:$i:1} ** digits))
        sum=$((sum + newNum))
    done
    if [ "$sum" -eq "$num" ]; then
        echo "true"
    else
        echo "false"
    fi
    
}


main "$@"