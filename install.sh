#!/bin/bash
#sudo wget https://dl.google.com/go/go1.14.4.linux-amd64.tar.gz
#sudo tar -C /usr/local -xzf go1.14.4.linux-amd64.tar.gz
#export PATH=$PATH:/usr/local/go/bin
#source ~/.bash_profile

cmd=`$(ps -C "go run main.go" >/dev/null)`

if $cmd > 0; then
        echo "Don't exist"
else
        echo "Exist"
        sudo kill %1
fi

echo "installed"
