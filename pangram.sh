#!/usr/bin/env bash

# Checks if a string is a pangram.
main () {
    local string="$1"
    local alphabet="abcdefghijklmnopqrstuvwxyz"
    for char in $(echo "$string" | tr -d ' ' | tr '[:upper:]' '[:lower:]' | fold -w1 | sort -u); do
        alphabet="${alphabet/$char}"
    done
    if [[ -z "$alphabet" ]]; then
        echo "true"
    else 
        echo "false"
    fi
}
main "$@"