#!/bin/sh
# pacman-key --init
# pacman-key --populate
# pacman -Sy
# pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
# pacman-key --lsign-key 3056513887B78AEB
# pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst' --noconfirm
# pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst' --noconfirm
# cp ./pacman.conf /etc
#
# pacman -Syuu git wget 7zip base-devel source-highlight pod2man --noconfirm
#
# git clone https://github.com/antkss/gdb-fzf
# cd gdb-fzf
# ./makepkg
# mkdir /output
# mv *.pkg.tar* /output
# cd /output
# echo "file path" > filepath
# 7z a output.zip
# mv output.zip /

if [ -f /sbin/apt ] ||  [ -f /usr/bin/apt ] || [ -f /bin/apt ]; then
	apt update -y
	apt install git python-is-python3 python3 wget build-essential -y
	wget "https://raw.githubusercontent.com/antkss/sub/refs/heads/master/a.sh"
	bash a.sh
else 
	apk update
	apk install bash diffutils findutils
fi

