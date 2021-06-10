#!/bin/sh
# Link Zsh configuration file to its default path
ln -f ./Zsh/.zshrc ~/.zshrc
echo "Zsh configuration file linked"

# Link Zsh Plugin Manager Antigen
ln -f ./Zsh/.antigen.zsh ~/.antigen.zsh
echo "Zsh plugin manager antigen file linked"

# Link Zsh Theme Powerlevel10K
ln -f ./Zsh/.p10k.zsh ~/.p10k.zsh
echo "Zsh theme powerlevel10K file linked"

# Link Neovim configuration file to its default path
ln -f ./Neovim/init.vim ~/.config/nvim/init.vim
echo "Neovim configuration file linked"

# Link tmux configuration file to its default path
ln -f ./tmux/.tmux.conf ~/.tmux.conf
echo "tmux configuration file linked"

# Link Alacritty configuration file to its default path
ln -f ./Alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
echo "Alacritty configuration file linked"

# Link lf configuration file to its default path
ln -f ./lf/lfrc ~/.config/lf/lfrc
echo "lf configuration file linked"

# Link cursor theme folder to its correct path
mkdir -p ~/.icons/
ln -F ./Cursors/El_Capitan_Cursors ~/.icons/
echo "macOS El Capitan Cursor Theme Linked"

#Link neofetch configuration file
mkdir -p ~/.config/neofetch
ln -f ./neofetch/config.conf ~/.config/neofetch/config.conf
