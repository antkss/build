#!/usr/bin/bash
pacman -Syuu git wget --noconfirm
wget "https://github.com/Jguer/yay/releases/download/v12.4.2/yay_12.4.2_x86_64.tar.gz"
tar -xf yay_12.4.2_x86_64.tar.gz
ln -s $(pwd)/yay_12.4.2_x86_64/yay /bin/yay
yay -Syuu 7zip base-devel source-highlight --noconfirm
git clone https://github.com/antkss/gdb-fzf
cd gdb-fzf
./makepkg
mkdir /output
mv *.pkg.tar* /output
cd /output
echo "file path" > filepath
7z a output.zip
mv output.zip /

