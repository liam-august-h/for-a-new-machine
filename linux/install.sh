#!/bin/bash

cd ~
mkdir bin
cd ~

# necessary packages:
# ack-grep, vim, cscope, ctags
sudo apt-get install ack-grep vim cscope exuberant-ctags openjdk-8-jdk

# FIXME android-ndk, android-sdk, 

# autojump
# FIXME depends on python
cd ~/bin
git clone git://github.com/joelthelion/autojump.git
cd autojump
./install.py
cd ~

# tmux
cd ~/bin
git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure && make
sudo make install
cd ~
