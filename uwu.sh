#/bin/bash

echo ""
echo "Installing programs"
echo ""

sudo pacman -S lxqt kitty zsh fastfetch hyfetch base-devel linux-zen-headers git chromium hyprland 
sudo pacman -S --needed xorg gdm plasma kde-applications
sudo pacman -S nvidia-dkms nvidia-utils nvidia-settings
echo ""
echo "Programs installed sucessfully"
echo ""

echo ""
echo "Switching shell"
echo ""

sudo chsh -s /bin/zsh

echo ""
echo "Shell switched sucessfully"
echo ""

echo ""
echo "Installing Yay"
echo ""

sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si

echo ""
echo "Yay installed sucessfully"
echo ""

echo ""
echo "Enabling the graphical environment"
echo ""

sudo systemctl enable --now gdm
