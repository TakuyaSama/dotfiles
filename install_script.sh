#!/bin/sh
# Link Zsh configuration file to its default path
ln ./Zsh/.zshrc ~/.zshrc
echo "Zsh configuration file linked"

# Link Neovim configuration file to its default path
ln ./Neovim/init.vim ~/.config/nvim/init.vim
echo "Neovim configuration file linked"

# Link tmux configuration file to its default path
ln ./tmux/.tmux.conf ~/.tmux.conf
echo "tmux configuration file linked"

# Link Alacritty configuration file to its default path
ln ./Alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
echo "Alacritty configuration file linked"
