#!/bin/bash
# This script is uncomments the Japanese locale and regenerates locales.

sudo steamos-readonly disable
sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman -Syu glibc --noconfirm
sudo sed -i "s%#ja_JP.UTF-8 UTF-8%ja_JP.UTF-8 UTF-8%" /etc/locale.gen
sudo locale-gen
sudo locale-gen ja_JP.utf-8
sudo steamos-readonly enable

echo "Done! Be sure to put 'LANG=ja_JP.UTF-8 %command%' in the game's startup options on Steam to enable the locale."
echo "You can also use 'LC_ALL' to set all of the relevant locale to a particular default. 'LC_ALL=ja_JP.UTF-8' for Lutris, for example."
