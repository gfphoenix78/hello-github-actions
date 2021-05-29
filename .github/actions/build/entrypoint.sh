#!/bin/sh -l

echo "################################################"
echo "CWD = '`pwd`'"
echo "################################################"
ls

pacman -Sy
pacman -S --noconfirm git make mingw-w64-gcc imagemagick librsvg

pacman -Q | grep libc

git clone git@github.com:gfphoenix78/plang.git
git clone https://github.com/feng92f/qusu.windows.git
#git clone https://github.com/wireguard/wireguard-windows

pushd wireguard-windows
make amd64/wireguard.exe x86/wireguard.exe
popd

mkdir -p outputs
cp wireguard-windows/amd64/wireguard.exe outputs/wireguard-amd64-v1.exe
cp wireguard-windows/x86/wireguard.exe outputs/wireguard-x86-v1.exe

echo "Hello, the message from world: $INPUT_MESSAGE"
ls -l outputs/*
