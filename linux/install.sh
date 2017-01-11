#!/bin/bash

cd ~
mkdir bin
cd ~

# necessary packages:
# ack-grep, vim, cscope, ctags, colordiff, tmux, autojump zeal ibus-pinyin openjdk-8-jdk
sudo apt-get install ack-grep vim cscope exuberant-ctags  colordiff tmux\
     autojump gawk zip curl unzip

# python related
sudo apt-get install python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose

# sudo apt-get install zeal ibus-pinyin python-pip

#sudo apt-get install git-core gnupg flex bison gperf build-essential \
#     zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 \
#     lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache \
#     libgl1-mesa-dev libxml2-utils xsltproc

#sudo pip install colout

# for typora
# optional, but recommended
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
# add Typora's repository
sudo add-apt-repository 'deb https://typora.io ./linux/'
sudo apt-get update
# install typora
sudo apt-get install typora

# apktool
cd ~/bin
mkdir apktool-2; cd apktool-2
wget https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool
chmod 711 apktool
wget https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.2.0.jar
ln -s apktool_2.2.0.jar apktool.jar
cd ..
ln -s ./apktool-2/apktool apktool
cd ~

# backsmali


# download something manually. There are:
# simplenote, android-sdk, android-ndk
google-chrome https://simplenote.com/downloads/ https://developer.android.com/studio/index.html https://developer.android.com/ndk/downloads/index.html

# disable nautilus automount and automount-open
#gsettings set org.gnome.desktop.media-handling automount false
gsettings set org.gnome.desktop.media-handling automount-open false

# FIXME: android SDK NDK
mkdir -P ~/android/sdk && mkdir -P ~/android/ndk
#ln -s ~/android/sdk/
