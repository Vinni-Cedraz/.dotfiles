#!/usr/bin/bash

# create .config/fish/config.fish if it doesn't exist
mkdir -p ~/.config/fish/
touch ~/.config/fish/config.fish
cp Xmodmap ~/.Xmodmap
xmodmap ~/.Xmodmap
cp -r fonts/* ~/.fonts
fc-cache -f -v ~/.fonts

mkdir -p ~/.config/wezterm
cp wezterm.lua ~/.config/wezterm/wezterm.lua

## install fish plugin managers
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

mkdir $NVM_DIR
# install nvm on bash first
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

## fix nvm for fish:
fisher install FabioAntunes/fish-nvm edc/bass
nvm install 16
nvm use 16

# write shell configurations to ~.config/fish/config.fish
echo '# outsourcing my shell configurations directly from dotfiles repo:' >> ~/.config/fish/config.fish
echo 'if test -f ~/.dotfiles/fishrc.fish' >> ~/.config/fish/config.fish
echo '	source ~/.dotfiles/fishrc.fish' >> ~/.config/fish/config.fish
echo 'else' >> ~/.config/fish/config.fish
echo '	echo "404: ~/.dotfiles/fishrc.fish (fish configurations) not found."' >> ~/.config/fish/config.fish
echo 'end' >> ~/.config/fish/config.fish
echo '# outsourcing end;' >> ~/.config/fish/config.fish
