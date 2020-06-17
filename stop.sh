#!/bin/bash
var="$(pgrep app)"
echo $var
sudo kill $var
echo "deleted"
