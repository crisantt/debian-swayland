#!/bin/bash

# Source Dependencies
sudo apt build-dep sway
sudo apt install glslang-tools \
libcairo2-dev \
libcap-dev \
libdbus-1-dev \
libdisplay-info-dev \
libevdev-dev \
libgdk-pixbuf2.0-dev \
libinput-dev \
libjson-c-dev \
libliftoff-dev \
libpam0g-dev \
libpango1.0-dev \
libpcre2-dev \
libpixman-1-dev \
libseat-dev \
libsystemd-dev \
libvulkan-dev \
libwayland-dev \
libwayland-egl1 \
libwlroots-dev \
libxcb-ewmh-dev \
libxkbcommon-dev \
meson \
pkgconf \
scdoc \
tree \
wayland-protocols \
wayland \
git \
build-essential -y

# Sway Packages
sudo apt install sway-notification-center \
wayland-utils \
wl-clipboard \
xdg-desktop-portal-wlr \
xwayland \
qtwayland5 \
policykit-1-gnome \
network-manager-gnome \
network-manager \
libgtk-layer-shell-dev \
libnotify-bin \
libnotify-dev -y

# User Packages
sudo apt install waybar pamixer pavucontrol pulsemixer xdotool wofi grim slurp udiskie feh firefox-esr curl unzip qimgv -y



mkdir -p ~/github cd ~/github
git clone https://gitlab.freedesktop.org/wlroots/wlroots.git
cd wlroots
meson setup build/
ninja -C build/
sudo ninja -C build/ install

cd ~/github
git clone https://github.com/swaywm/sway.git
meson build/
ninja -C build/
sudo ninja -C build/ install

cd ~/
xdg-user-dirs-update
echo "DONE!!"
