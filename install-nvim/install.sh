#!/bin/zsh
# This script performs the following tasks:
# 1. Unpacks the `nvim-linux64.tar.gz` file to the `~/nvim` folder
# 2. Adds the `~/nvim/bin` folder to the PATH variable

# unpack nvim-linux64.tar.gz to ~/nvim folder
echo "message: unpacking nvim-linux64.tar.gz to ~/nvim folder"
mkdir -p ~/nvim && tar -xzf ~/install-nvim/nvim-linux64.tar.gz -C ~/nvim

# add ~/nvim/bin to PATH variable
echo "message: adding ~/nvim/bin to PATH variable"
echo -n 'export PATH=$PATH:~/nvim/nvim-linux64/bin' >> ~/.zshrc

tail -f /dev/null
