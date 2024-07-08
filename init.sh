#!/bin/bash
set -e

# Update and upgrade
sudo apt update && sudo apt upgrade -y

# Remove unwanted pre-installed applications
sudo snap remove firefox thunderbird
sudo apt purge -y yelp libreoffice* rhythmbox firefox* thunderbird* shotwell gnome-clocks gnome-calculator remmina gnome-calendar gnome-screenshot gnome-text-editor transmission-common transmission-gtk
sudo snap remove snap-store
sudo apt autoremove -y

# Install essential tools
sudo apt install -y curl git dconf-cli xclip vim

# Tools to consider installing later:
# gnome-tweaks
# docker.io

# NVM and Node.js
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
command -v nvm
nvm install node
node -v
npm -v

# pnpm
curl -fsSL https://get.pnpm.io/install.sh | sh -

# Starship
curl -sS https://starship.rs/install.sh | sh -s -- -y
mkdir -p ~/.config
cp ./config/starship.toml ~/.config/starship.toml

# Append custom bash configuration
cat ./config/.bashrc >> ~/.bashrc

# VS Code
mkdir -p ~/.config/Code/User
cp .vscode/settings.json ~/.config/Code/User/settings.json
cp .vscode/keybindings.json ~/.config/Code/User/keybindings.json

# Nerd Fonts
mkdir -p ~/.local/share/fonts
curl -fLo ~/.local/share/fonts/DejaVuSansMNerdFont-Regular.ttf https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DejaVuSansMono/Regular/DejaVuSansMNerdFont-Regular.ttf
fc-cache -fv

# Terminal
dconf load /org/gnome/terminal/ < ./config/terminal.dconf

# i3
sudo apt install -y feh i3
cp ./config/wallpaper.jpg ~/Pictures/i3/wallpaper.jpg
cp ./i3/config ~/.config/i3/config

# Polybar
sudo apt install -y polybar xdotool
cp ./polybar/config.ini /etc/polybar/config.ini
cp ./polybar/config.ini /etc/polybar/launch.sh
chmod +x ./polybar/launch.sh

sudo reboot
