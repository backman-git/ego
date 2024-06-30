#!/bin/bash

set -eux
sudo apt-get update
sudo apt-get install -y "linux-headers-$(uname -r)"


#install llvm-12
wget   https://apt.llvm.org/llvm.sh
chmod +x llvm.sh
sudo ./llvm.sh 12 all



#install bpftool & libbpf
git clone --recurse-submodules https://github.com/libbpf/bpftool.git

#install zsh
sudo apt install zsh -y

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

