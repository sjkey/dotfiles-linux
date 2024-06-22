#!/bin/bash
set -e

sudo apt update && sudo apt upgrade -y

# Install NVM and Node.js
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
command -v nvm
nvm install node
node -v
npm -v

# Install pnpm
curl -fsSL https://get.pnpm.io/install.sh | sh -
pnpm -v

# Starship
curl -sS https://starship.rs/install.sh | sh
mkdir -p ~/.config
cp config/starship.toml ~/.config/starship.toml

