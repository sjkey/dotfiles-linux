#!/bin/bash
set -e

# Copy VS Code configuration files
mkdir -p ~/.config/Code/User
cp .vscode/settings.json ~/.config/Code/User/settings.json
cp .vscode/keybindings.json ~/.config/Code/User/keybindings.json