#!/usr/bin/env bash

# Fizzbuzz
main () {
    
    for i in "$@"; do
        res=""
        if [ $((i % 3)) -eq 0 ]; then
            res+="Pling"
        fi
        if [ $((i % 5)) -eq 0 ]; then
            res+="Plang"
        fi
        if [ $((i % 7)) -eq 0 ]; then
            res+="Plong"
        fi

        if [ -z "$res" ]; then
            res=$i
        fi

        echo "$res"
    done
}


main "$@"