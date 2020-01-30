#!/bin/bash 

cd ~

if [ ! -d Downloads ]
then
	mkdir Downloads
fi 

cd ~/Downloads

## 检测ctags 还有 gtags的安装
if ! which ctags &>/dev/null; then
	echo "ctags is not install"
	git clone https://github.com/universal-ctags/ctags.git ctags
	cd ctags

	apt install \
    gcc make \
    pkg-config autoconf automake \
    python3-docutils \
    libseccomp-dev \
    libjansson-dev \
    libyaml-dev \
    libxml2-dev

	./autogen.sh
	mkdir build
	cd build
	../configure --prefix=/usr/local
	make -j6 
	make install

	cd ~/Downloads
fi

if ! which gtags &>/dev/null; then
	echo "gtags is not install"
	wget http://tamacom.com/global/global-6.6.4.tar.gz
	tar -zxvf global-6.6.4.tar.gz
	cd global-6.6.4
	mkdir build 
    cd build/
    ../configure --prefix=/usr/local
    make -j6
    make install 
	cd ~/Downloads
fi

## check golang YCM need golang
if ! which go &>/dev/null; then
    wget https://dl.google.com/go/go1.13.7.linux-amd64.tar.gz
    tar -zxvf go1.13.7.linux-amd64.tar.gz
    mv go /usr/local
    cd ~/Downloads
fi

## YCM 依赖检查 cmake3 python3-dev build-essential 
apt install build-essential cmake python3-dev

## defx目录树环境
pip3 install --user pynvim
