#!/usr/bin/bash
pacman-key --init
pacman-key --populate
pacman -Sy
pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
pacman-key --lsign-key 3056513887B78AEB
pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' --noconfirm
pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst' --noconfirm
cp ./pacman.conf /etc

pacman -Syuu git wget 7zip base-devel source-highlight --noconfirm

git clone https://github.com/antkss/gdb-fzf
cd gdb-fzf
./makepkg
mkdir /output
mv *.pkg.tar* /output
cd /output
echo "file path" > filepath
7z a output.zip
mv output.zip /

