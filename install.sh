#!/usr/bin/bash

# create .config/fish/config.fish if it doesn't exist
mkdir -p ~/.config/fish/
touch ~/.config/fish/config.fish
cp Xmodmap ~/.Xmodmap
cp -r fonts ~/.
mkdir -p ~/.config/wezterm
## remember to install the Iosevka Custom Extended font before you re-enter wezterm
cp wezterm.lua ~/.config/wezterm/wezterm.lua
xmodmap ~/.Xmodmap
curl -L git.io/antigen-nightly > ~/.antigen.zsh

# write shell configurations to .config/fish/config.fish
echo '# outsourcing my shell configurations directly from dotfiles repo:' >> ~/.config/fish/config.fish
echo 'if [ -f ~/.dotfiles/fishrc.fish ]; then' >> ~/.config/fish/config.fish
echo '	source ~/.dotfiles/fishrc.fish' >> ~/.config/fish/config.fish
echo 'else' >> ~/.config/fish/config.fish
echo '	print "404: ~/.dotfiles/fishrc.fish (fish configurations) not found."' >> ~/.config/fish/config.fish
echo 'fi' >> ~/.config/fish/config.fish
echo '# outsourcing end;' >> ~/.config/fish/config.fish
