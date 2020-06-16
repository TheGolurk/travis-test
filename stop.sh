#!/bin/bash

cd /home/ec2-user/go/src/github.com/TheGolurk/travis-test

cmd=`$(pgrep go)`

if $cmd > 0; then
        echo "Exist"
        sudo kill cmd
else
        echo "Don't Exist"
fi
