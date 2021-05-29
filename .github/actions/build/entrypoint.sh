#!/bin/sh -l

echo "################################################"
echo "CWD = '`pwd`'"
echo "################################################"

pacman -Sy
pacman -S --noconfirm git make mingw-w64-gcc imagemagick librsvg

pacman -Q | grep libc

mkdir ~/workspace
cd ~/workspace
git clone https://github.com/wireguard/wireguard-windows
cd wireguard-windows

make amd64/wireguard.exe x86/wireguard.exe

echo "ALL IS WELL"
echo "Hello world my name is $INPUT_MY_NAME"
