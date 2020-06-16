#!/bin/bash
pwd

jobs
jobs

sudo kill %1

export HOME=/home/ec2-user/

cd /home/ec2-user/go/src/github.com/TheGolurk/travis-test

echo $HOME
pwd

export PATH=$PATH:/usr/local/go/bin
source ~/.bash_profile
source ~/.bashrc 

go env -w GOCACHE="/home/ec2-user/.cache/go-build"

go env

echo "Runing app..."

go run main.go  > /dev/null 2>&1 &
