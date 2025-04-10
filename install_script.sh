#!/bin/sh
# Link Zsh configuration file to its default path
cp -R ./Zsh/.zshrc ~/.zshrc
echo "Zsh configuration file linked"

# Link Zsh Plugin Manager Antigen
cp -R ./Zsh/.antigen.zsh ~/.antigen.zsh
echo "Zsh plugin manager antigen file linked"

# Link Zsh Theme Powerlevel10K
cp -R ./Zsh/.p10k.zsh ~/.p10k.zsh
echo "Zsh theme powerlevel10K file linked"

# Link Neovim configuration file to its default path
mkdir -p $HOME/.config/nvim/
cp -R ./Neovim/init.vim ~/.config/nvim/init.vim
echo "Neovim configuration file linked"

# Link tmux configuration file to its default path
#cp -R ./tmux/.tmux.conf ~/.tmux.conf
#echo "tmux configuration file linked"

# Link Alacritty configuration file to its default path
cp -R ./Alacritty/alacritty.toml ~/.config/alacritty/alacritty.toml
echo "Alacritty configuration file linked"

# Link lf configuration file to its default path
cp -R ./lf/lfrc ~/.config/lf/lfrc
echo "lf configuration file linked"

# Link cursor theme folder to its correct path
mkdir -p ~/.icons/
cp -R ./Cursors/El_Capitan_Cursors ~/.icons/
echo "macOS El Capitan Cursor Theme Linked"

#Link neofetch configuration file
mkdir -p ~/.config/neofetch
cp -R ./neofetch/config.conf ~/.config/neofetch/config.conf

#MangoHud Configuration
mkdir -p ~/.config/MangoHud/
cp -R ./MangoHud/MangoHud.conf ~/.config/MangoHud/MangoHud.conf

#Starship Configuration File
cp -R ./Starship/starship.toml ~/.config/starship.toml

#Zellij Configuration File
mkdir -p ~/.config/zellij
cp -R ./Zellij/zellij.kdl ~/.config/zellij/zellij.kdl

#Fonts
mkdir $HOME/.local/share/fonts
cp -R ./Fonts/Google Fonts/Inter/Inter-VariableFont_slnt,wght.ttf ~/.local/share/fonts/Inter-VariableFont_slnt,wght.ttf
echo "Inter Fonts Copied"

#Zed Editor
mkdir $HOME/.config/zed
cp -R ./zed/ ~/.config/zed/

#dunst Configuration File
#mkdir -p ~/.config/dunst/
#cp -R ./dunst/dunstrc ~/.config/dunst/dunstrc
#echo "dunst configuration file done"

#sway Configuration Files
#mkdir -p ~/.config/sway/
#cp -R ./sway/config ~/.config/sway/config
#cp -R .sway/config.d ~/.config/sway/config.d
#echo "sway configuration files done"

#waybar Configuration Files
#mkdir -p ~/.config/waybar/
#cp -R ./waybar/config ~/.config/waybar/config
#cp -R ./waybar/styles.css ~/.config/waybar/styles.css
#echo "waybar configuration files done"
