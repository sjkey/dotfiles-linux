#!/bin/bash
set -e

sudo apt update && sudo apt upgrade -y

# Remove unwanted pre-installed applications
sudo snap remove firefox thunderbird
sudo apt purge -y yelp libreoffice* rhythmbox firefox* thunderbird* shotwell gnome-clocks gnome-calculator remmina gnome-calendar gnome-screenshot gnome-text-editor transmission-common transmission-gtk
sudo snap remove snap-store
sudo apt autoremove -y

# Install essential tools
sudo apt install -y curl git dconf-cli

# Tools to consider installing later:
# tmux
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
source ~/.bashrc
pnpm -v

# Starship
curl -sS https://starship.rs/install.sh | sh
mkdir -p ~/.config
cp config/starship.toml ~/.config/starship.toml

# Terminal
dconf load /org/gnome/terminal/ < config/terminal.dconf

# VS Code
chmod +x scripts/vscode.sh
./scripts/vscode.sh

# i3
sudo apt install -y feh i3
# cp config/wallpaper.jpg ~/Pictures/wallpaper.jpg

# copy i3 config when it's ready
# for now let's use 
# echo 'exec --no-startup-id feh --bg-scale ~/Pictures/wallpaper.jpg' >> ~/.config/i3/config
# i3-msg restart

# Polybar
sudo apt install -y polybar xdotool
cp polybar/config.ini /etc/polybar/config.ini
chmod +x polybar/launch.sh
./polybar/launch.sh