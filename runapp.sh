#!/bin/bash
cd ~

pwd

export PATH=$PATH:/usr/local/go/bin
source ~/.bash_profile

echo "Runing app..."

go run main.go
