#!/bin/bash
dir="$(cd $(dirname $0); pwd;)"
echo "${dir%.bin}"
ln -s ~/.config/nvim "${dir%.bin}.config/nvim"
