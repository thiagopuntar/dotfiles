#!/bin/bash
rungo () {
    if [ $# -eq 0 ]
    then
        echo "Please provide a file path as an argument (e.g., rungo cmd/*.go)."
        exit 1
    fi

    for file in "$@"
    do
        nodemon --exec go run "$file" --signal SIGTERM
    done
}
rungo "$@"
