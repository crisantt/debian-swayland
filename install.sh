#!/bin/bash

sudo apt update && sudo apt upgrade -y

# For Sway
sudo apt install sway \
build-essential \
waybar \
sway-notification-center \
libnotify-bin \
libnotify-dev \
policykit-1-gnome \
network-manager-gnome \
network-manager \
intel-microcode \
libgtk-layer-shell-dev -y

# Wayland Packages
sudo apt install wayland-protocols \
wayland-utils \
wl-clipboard \
xdg-desktop-portal-wlr \
libwlroots-dev \
xwayland \
mesa-vulkan-drivers \
mesa-utils \
wlr-randr \
libinput10 \
qtwayland5 -y

# Packages That I Use
sudo apt install firefox-esr \
qimgv \
grim \
slurp \
udiskie -y

# Dev Tools
sudo apt install make \
cmake \
ninja-build \
unzip \
mtools \
clangd \
tar -y

# Audio Packages
sudo apt install pavucontrol \
pamixer \
pulsemixer -y

# Fonts
sudo apt install lxappearance \
fonts-recommended \
fonts-dejavu \
fonts-font-awesome \
fonts-noto-core \
fonts-noto-cjk \
fonts-noto-color-emoji \
fonts-hack-ttf -y
fonts=("JetBrainsMono" "FiraCode" "Hack" "Mononoki" "Monaspice" "Ubuntu")
for font in "${fonts[@]}"; do
  wget -q --show-progress "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/$font.zip" -P ~/.fonts
  unzip -q -o ~/.fonts/$font.zip -d ~/.fonts/$font/
done
fc-cache -fv
echo "DONE WITH THE FONTS!!!!!"

xdg-user-dirs-update

echo "export MOZ_ENABLE_WAYLAND=1" >> ~/.bashrc
echo "export QT_QPA_PLATFORM=wayland" >> ~/.bashrc
echo "export XDG_SESSION_TYPE=wayland" >> ~/.bashrc
echo "export XDG_CURRENT_DESKTOP=sway" >> ~/.bashrc

echo "DONE!!!"
