#!/bin/sh -l

echo "################################################"
echo "CWD = '`pwd`'"
echo "################################################"
ls

pacman -Sy
pacman -S --noconfirm git make mingw-w64-gcc imagemagick librsvg

pacman -Q | grep libc

git clone https://github.com/wireguard/wireguard-windows

pushd wireguard-windows
make amd64/wireguard.exe x86/wireguard.exe
popd

cp wireguard-windows/amd64/wireguard.exe wg_64
echo "ALL IS WELL"
echo "Hello world my name is $INPUT_MY_NAME"
ls 
ls -l wg*
