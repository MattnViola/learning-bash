#!/usr/bin/env bash

# Makes an acronym out of a sentence.
main () {
    IFS="- "
    # Removing the glob.
    string=$(echo "$@" | sed 's/\*//g')
    res=""
    for word in $string; do
      clean_word=$(echo "$word" | sed 's/[^a-zA-Z]//g')
      res="${res}${clean_word:0:1}"
done
    echo "${res^^}"
}
main "$@"
