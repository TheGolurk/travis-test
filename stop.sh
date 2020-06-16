#!/bin/bash
cmd=`$(ps -C "go run main.go" >/dev/null)`

if $cmd > 0; then
        echo "Don't exist"
else
        echo "Exist"
        kill %1
fi
