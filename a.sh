#!/usr/bin/bash
wget "https://github.com/Jguer/yay/releases/download/v12.4.2/yay_12.4.2_x86_64.tar.gz"
tar -xf yay_12.4.2_x86_64.tar.gz
ln -s $(pwd)/yay_12.4.2_x86_64/yay /bin/yay
yay -Syuu git 7zip base-devel source-highlight pod2man --noconfirm
git clone https://github.com/antkss/gdb-fzf
cd gdb-fzf
./makepkg
mkdir /output
mv *.pkg.tar* /output
cd /output
echo "file path" > filepath
7z a output.zip
mv output.zip /

