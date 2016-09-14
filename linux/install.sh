#!/bin/bash

cd ~
mkdir bin
cd ~

# necessary packages:
# ack-grep, vim, cscope, ctags, colordiff, tmux, autojump zeal ibus-pinyin openjdk-8-jdk
sudo apt install ack-grep vim cscope exuberant-ctags  colordiff tmux\
     autojump zeal ibus-pinyin gawk

sudo apt-get install git-core gnupg flex bison gperf build-essential \
     zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 \
     lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache \
     libgl1-mesa-dev libxml2-utils xsltproc unzip

# FIXME android-ndk, android-sdk, 

# disable nautilus automount and automount-open
#gsettings set org.gnome.desktop.media-handling automount false
gsettings set org.gnome.desktop.media-handling automount-open false
