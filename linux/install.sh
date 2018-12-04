#!/bin/bash

set -x

USER=$(whoami)
if ! [[ -e /home/${USER}/bin ]]; then
    mkdir /home/${USER}/bin
fi

# TODO: ping network

sudo apt update -qq

# enable ssh server
if ! [[ -n $(sudo systemctl status ssh) ]]; then
    sudo apt install -y openssh-server
fi

# install all necessary packages:
## java8
if ! [[ -n $(which javac) ]]; then
    echo "install java"
    sudo apt install -y openjdk-8-jdk openjdk-8-dbg openjdk-8-source
fi

## TODO: python and python3
if ! [[ -n $(which python) ]]; then
    echo "install python"
    sudo apt install -y -qq python-dev
fi

if ! [[ -n $(which python3) ]]; then
    echo "install python3"
    sudo apt install -y -qq python3-dev
fi

### always install distutils
sudo apt -y -qq python3-distutils

PYTHON_VERSION=$(python -c "import sys; print('{:d}'.format(sys.hexversion<0x03000000))")
if [[ ${PYTHON_VERSION} -eq 0 ]]; then
    echo 'change python 3 to python 2'
    if [[ -n $(update-alternatives --list python 2>&1 | grep 'no alternatives for python') ]]; then
        echo 'install python'
        sudo update-alternatives --install /usr/bin/python python $(readlink -f /usr/bin/python2) 1
        sudo update-alternatives --install /usr/bin/python python $(readlink -f /usr/bin/python3) 10
    fi
else
    echo 'keep python 2'
fi

## toys
sudo apt install -qq -y ack-grep vim tmux autojump zip unzip
echo "source /usr/share/autojump/autojump.sh" >> ~/.bashrc

## programming tools
sudo apt install -qq -y cscope exuberant-ctags curl git

## doxygen
sudo apt install -qq -y doxygen doxygen-gui

## graphviz
sudo apt install -qq -y graphviz doxygen-gui

### pip
#if ! [[ -n $(which pip) ]]; then
#    curl https://bootstrap.pypa.io/get-pip.py -o /tmp/get-pip.py
#    python /tmp/get-pip.py --user
#    pip install --user -U pip
#fi

## pipenv
if ! [[ -n $(which pipenv) ]]; then
    curl https://raw.githubusercontent.com/kennethreitz/pipenv/master/get-pipenv.py | sudo python
fi

## chrome
if ! [[ -n $(which google-chrome) ]]; then
    echo "to download chrome from https://www.google.com/chrome/ "
    wget -P /tmp https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb
    echo "google-chrome needs environment variables, like all_proxy, no_proxy"
fi

## synergy
if ! [[ -n $(which synergy) ]]; then
    echo "to download synergy from https://symless.com/synergy with gmail and H1 as account "
fi

# clean
sudo apt autoremove -y -qq

set +x
