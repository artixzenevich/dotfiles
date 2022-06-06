#!/bin/bash
base=~/.config
repo=~/.dotfiles
ready=" - already exists"
dirs=("fish" "kitty" "roffi" "nvim" "zathura")

if ! [ -d $base ]; then
  mkdir $base
else
  echo $base $ready
fi

for d in ${dirs[@]}
do
  if ! [ -d $base/$d ]; then
    mkdir $base/$d
  else
    echo $d $ready
  fi
done

mkdir $base/fish/conf.d
mkdir $base/fish/function

ln -s ~/.dotfiles/fish/config.fish ~/.config/fish/config.fish
ln -s ~/.dotfiles/fish/conf.d/omf.fish ~/.config/fish/conf.d/omf.fish
ln -s ~/.dotfiles/fish/conf.d/omf.fish ~/.config/fish/functions/fish_greeting.fish
ln -s ~/.dotfiles/fish/conf.d/omf.fish ~/.config/fish/fish_variables
ln -s ~/.dotfiles/nvim/init.vim ~/.config/nvim/init.vim
ln -s ~/.dotfiles/zathura/zathurarc ~/.config/zathura/zathurarc
ln -s ~/.dotfiles/rofi/config.rasi ~/.config/rofi/config.rasi
ln -s ~/.dotfiles/rofi/gruvbox-common.rasi ~/.config/rofi/gruvbox-common.rasi