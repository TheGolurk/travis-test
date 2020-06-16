#!/bin/bash

cd /home/ec2-user/go/src/github.com/TheGolurk/travis-test

cmd=`$(ps -C "go run main.go" >/dev/null)`

if $cmd > 0; then
        echo "Don't exist"
else
        echo "Exist"
        sudo kill %1
        jobs
fi
