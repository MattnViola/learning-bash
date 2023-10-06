#!/usr/bin/env bash
main() {
    if [ ! $# -eq 1 ]; then
        echo "Usage: $0 <person>"
        exit 1
    else
        echo "Hello, $1"
    fi
}
main "$@"