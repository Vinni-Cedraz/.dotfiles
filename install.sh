#!/usr/bin/zsh

# create .zshrc if it doesn't exist
touch ~/.zshrc
cp Xmodmap ~/.Xmodmap
cp -r fonts ~/.
mkdir -p ~/.config/wezterm
## remember to install the Iosevka Custom Extended font before you re-enter wezterm
cp wezterm.lua ~/.config/wezterm/wezterm.lua
xmodmap ~/.Xmodmap
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
curl -L git.io/antigen-nightly > ~/.antigen.zsh

# write shell configurations to .zshrc
echo '# outsourcing my shell configurations directly from dotfiles repo:' >> ~/.zshrc
echo 'if [ -f ~/.dotfiles/zshrc ]; then' >> ~/.zshrc
echo '	source ~/.dotfiles/zshrc' >> ~/.zshrc
echo 'else' >> ~/.zshrc
echo '	print "404: shell configurations not found."' >> ~/.zshrc
echo 'fi' >> ~/.zshrc
echo '# outsourcing end;' >> ~/.zshrc
