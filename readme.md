# Dotfiles

#### Workflow Philosophy and Rules

1. [PORTABLE] Configuration files and settings should be stored in GitHub 
2. [EASE] Automated setup process 
3. [SIMPLICITY] Strict and minimal approach to avoid unnecessary complexity
4. [EFFICIENCY] Keyboard-centric workflow 
5. [PRIVACY] Freedom of choice

#### macOS

- Shell: zsh
- Terminal: iTerm
- Launcher: raycast
- Font: DejaVu
- Shell prompt: Starship

#### Linux 

- OS: Ubuntu
- Shell: Bash
- Window Manager: i3
- Status bar: Polybar
- Terminal: gnome terminal
- Launcher: Rofi
- Font: DejaVu
- Shell prompt: Starship

#### Installation

1. Clone the repository and navigate to the directory
2. Run the initialization script
    ```bash
    chmod +x init.sh
    ./init.sh
    ```
3. Select `i3` after reboot
4. Run `follow-up.sh` and restart i3

### TODO
- Mic status / mute toggle in Polybar