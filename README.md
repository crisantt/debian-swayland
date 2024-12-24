# Debian Wayland Using Sway

Install git first

```
sudo apt install git
```

### Install Sway Using Debian Package Manager
```
mkdir -p ~/github && cd ~/github
git clone https://github.com/crisantt/debian-swayland.git
cd debian-swayland
bash install.sh
```
### Build Sway From Source (Not Sure if Working)
```
mkdir -p ~/github && cd ~/github
git clone https://github.com/crisantt/debian-swayland.git
cd debian-swayland/build-from-source
bash sway.sh
```

### Add these lines to your .bashrc
```
if [ -z "$WAYLAND_DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ] ; then
    exec sway
fi
```
