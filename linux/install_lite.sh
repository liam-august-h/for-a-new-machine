#!/bin/bash

cd ~
mkdir bin

sudo apt-get install -y ack-grep vim cscope exuberant-ctags colordiff tmux \
     autojump gawk zip curl unzip doxygen graphviz doxygen-gui openjdk-8-jdk \
     maven \
     python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas \
     python-sympy python-nose

echo "source /usr/share/autojump/autojump.sh" >> ~/.bashrc
