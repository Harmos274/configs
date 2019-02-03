#!/bin/bash

var=`cat ${HOME}/.zsh_history | tail -2 | head -n 1 | cut -d";" -f 2`
sudo $var
