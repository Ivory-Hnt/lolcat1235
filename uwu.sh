#/bin/bash

sudo pacman -S lxqt kitty zsh fastfetch hyfetch base-devel linux-zen-headers git chromium hyprland 
sudo pacman -S --needed xorg gdm plasma kde-applications
sudo pacman -S nvidia-dkms nvidia-utils nvidia-settings
sudo chsh -s /bin/zsh

sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si

sudo systemctl enable --now gdm
