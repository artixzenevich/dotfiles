#!/bin/bash

base = ~/.config

mkdir $base
mkdir -p $base/fish/conf.d
mkdir $base/fish/functions
mkdir $base/kitty/
mkdir $base/rofi
mkdir $base/nvim
mkdir $base/zathura

ln -s ~/.dotfiles/fish/config.fish ~/.config/fish/config.fish
ln -s ~/.dotfiles/fish/conf.d/omf.fish ~/.config/fish/conf.d/omf.fish
ln -s ~/.dotfiles/fish/conf.d/omf.fish ~/.config/fish/functions/fish_greeting.fish
ln -s ~/.dotfiles/fish/conf.d/omf.fish ~/.config/fish/fish_variables
ln -s ~/.dotfiles/nvim/init.vim ~/.config/nvim/init.vim
ln -s ~/.dotfiles/zathura/zathurarc ~/.config/zathura/zathurarc
ln -s ~/.dotfiles/rofi/config.rasi ~/.config/rofi/config.rasi
ln -s ~/.dotfiles/rofi/gruvbox-common.rasi ~/.config/rofi/gruvbox-common.rasi