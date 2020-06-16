#!/bin/bash
pwd

cd /home/ec2-user/go/src/github.com/TheGolurk/travis-test

echo $HOME
echo pwd

export PATH=$PATH:/usr/local/go/bin
source ~/.bash_profile
source ~/.bashrc 

go env -w GOCACHE="/home/ec2-user/.cache/go-build"

go env

echo "Runing app..."

go run main.go
