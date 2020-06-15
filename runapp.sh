#!/bin/bash
/opt/app > /dev/null 2> /dev/null < /dev/null &

echo "Runing app..."

go run main.go
