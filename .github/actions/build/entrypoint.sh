#!/bin/sh -l

pacman -Sy
pacman -S --noconfirm git make

pacman -Q | grep libc

mkdir ~/workspace
cd ~/workspace
git clone https://github.com/wireguard/wireguard-windows
#cd wireguard-windows

echo "ALL IS WELL"
sh -c "echo Hello world my name is $INPUT_MY_NAME"
