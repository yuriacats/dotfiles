#!/bin/bash
dir="$(cd $(dirname $0); pwd;)"
echo "${dir%.bin}"
ln -s ~/.config/nvim "${dir%.bin}.config/nvim"

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
