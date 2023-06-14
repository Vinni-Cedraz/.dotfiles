#!/usr/bin/bash

# create .config/fish/config.fish if it doesn't exist
mkdir -p ~/.config/fish/
touch ~/.config/fish/config.fish
cp Xmodmap ~/.Xmodmap
cp -r fonts ~/.fonts
fc-cache -f -v ~/.fonts

curl -LO https://github.com/wez/wezterm/releases/download/20230408-112425-69ae8472/WezTerm-20230408-112425-69ae8472-Ubuntu20.04.AppImage
chmod +x WezTerm-20230408-112425-69ae8472-Ubuntu20.04.AppImage

mkdir -p ~/.local/bin
mv ./WezTerm-20230408-112425-69ae8472-Ubuntu20.04.AppImage ~/.local/bin/wezterm
~/.local/bin/wezterm

mkdir -p ~/.config/wezterm

cp wezterm.lua ~/.config/wezterm/wezterm.lua
xmodmap ~/.Xmodmap
curl -L git.io/antigen-nightly > ~/.antigen.zsh
## install fish plugin managers
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

## fix nvm for fish:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
fisher install FabioAntunes/fish-nvm edc/bass
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
## use node 16
nvm install 16
nvm use 16

# write shell configurations to .config/fish/config.fish
echo '# outsourcing my shell configurations directly from dotfiles repo:' >> ~/.config/fish/config.fish
echo 'if test -f ~/.dotfiles/fishrc.fish' >> ~/.config/fish/config.fish
echo '	source ~/.dotfiles/fishrc.fish' >> ~/.config/fish/config.fish
echo 'else' >> ~/.config/fish/config.fish
echo '	echo "404: ~/.dotfiles/fishrc.fish (fish configurations) not found."' >> ~/.config/fish/config.fish
echo 'end' >> ~/.config/fish/config.fish
echo '# outsourcing end;' >> ~/.config/fish/config.fish

#make fish somewhat default:
echo "exec fish" > ~/.bashrc
exec bash
