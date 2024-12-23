sudo apt install \
  meson \
  libwayland-dev \
  wayland-protocols \
  libpcre2-dev \
  libjson-c-dev \
  libpango1.0-dev \
  libcairo2-dev \
  libgdk-pixbuf2.0-dev \
  scdoc \
  git
git clone https://github.com/swaywm/sway.git
cd sway
meson build/
ninja -C build/
sudo ninja -C build/ install
