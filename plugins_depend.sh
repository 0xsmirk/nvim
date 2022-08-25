#!/bin/bash

release_num=$(lsb_release -r --short)
os=$(lsb_release -i --short)
version="18.04"
support_os="Ubuntu"

# == if os is ubuntu 18.04 need to install python3.7 else default python ==
if (($os == $support_os))
then
    if [ x"$version" == x"$release_num" ]; then
	echo -e "\033[32m[INFO]Install Python3.7\033[0m"
        sudo apt install python3.7 -y
    else
	echo -e "\033[32m[INFO]Install Python\033[0m"
        sudo apt install python3 -y
    fi
else
    echo -e "\033[31monly support ubuntu\033[0m"
fi

# == install neovim latest ==
echo -e "\033[32m[INFO]Install Neovim\033[0m"
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mv nvim.appimage nvim
sudo mv ./nvim /bin
source ~/.bashrc

# == nodejs version 16.x ==
echo -e "\033[32m[INFO]Install Nodejs 16.X\033[0m"
curl -sL https://deb.nodesource.com/setup_16.x -o /tmp/nodesource_setup.sh
sudo bash /tmp/nodesource_setup.sh
sudo apt install nodejs