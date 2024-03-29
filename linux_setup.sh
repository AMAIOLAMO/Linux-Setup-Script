#!/bin/bash


# installs nala
sudo apt install nala


# essential
sudo nala install neovim fish fzf bat timeshift

# non essential
sudo nala install keepassxc krita nnn syncthing alacritty

# setup fzf with batcat
printf "\nalias fzfbat \"fzf --preview 'batcat --style=numbers --color=always {}'\"\n" >> ~/.config/fish/config.fish


# cd into downloads folder
cd ~/Downloads/

# install nerd font
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip

mkdir FiraCodeTemp
unzip FiraCode.zip FiraCodeTemp

# setup font
sudo mv FiraCodeTemp/FiraCodeNerdFont-Regular.ttf /usr/share/fonts/ttf

# update font cache
fc-cache

rm -rf FiraCodeTemp


# setup fish
chsh -s $(which fish)


# setup starship
curl -sS https://starship.rs/install.sh | sh

printf "starship init fish | source\n" >> ~/.config/fish/config.fish

printf "setup done! now restart shell hehe!\n"
