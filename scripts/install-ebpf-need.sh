#!/bin/bash

set -eux

sudo apt-get update
sudo apt-get install -y bpfcc-tools "linux-headers-$(uname -r)"
sudo apt-get install -y zsh
apt install -y libbpf-dev


sudo apt install -y  pkg-config
sudo apt-get install -y zlib1g-dev


#goenv
git clone https://github.com/go-nv/goenv.git ~/.goenv





echo 'export GOENV_ROOT="$HOME/.goenv"' >> ~/.bash_profile
echo 'export PATH="$GOENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(goenv init -)"' >> ~/.bash_profile
echo 'export PATH="$GOROOT/bin:$PATH"' >> ~/.bash_profile
echo 'export PATH="$PATH:$GOPATH/bin"' >> ~/.bash_profile

echo 'export GOENV_ROOT="$HOME/.goenv"' >> ~/.zshrc
echo 'export PATH="$GOENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(goenv init -)"' >> ~/.zshrc
echo 'export PATH="$GOROOT/bin:$PATH"' >> ~/.zshrc
echo 'export PATH="$PATH:$GOPATH/bin"' >> ~/.zshrc



wget https://apt.llvm.org/llvm.sh
chmod +x llvm.sh
sudo ./llvm.sh 15 all

sudo apt install -y zip bison build-essential cmake flex git libedit-dev python zlib1g-dev libelf-dev libfl-dev python3-setuptools liblzma-dev arping netperf iperf

git clone --recurse-submodules https://github.com/libbpf/bpftool.git
cd ./bpftool/src && sudo make install

sudo ln -s /usr/include/x86_64-linux-gnu/asm /usr/include/asm


#manual install go