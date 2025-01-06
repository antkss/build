#!/usr/bin/bash
pacman -Syuu git 7zip --noconfirm
git clone https://github.com/antkss/gdb-fzf
cd gdb-fzf
./makepkg
mkdir /output
mv *.pkg.tar* /output
cd /output
echo "file path" > filepath
7z a output.zip
mv output.zip /

