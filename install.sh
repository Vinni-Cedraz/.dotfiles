#!/usr/bin/zsh

rm ~/.zshrc

# write shell configurations to .zshrc
echo '# outsourcing my shell configurations directly from dotfiles repo:' >> ~/.zshrc
echo 'if [ -f ~/.dotfiles/zshrc ]; then' >> ~/.zshrc
echo '	source ~/.dotfiles/zshrc' >> ~/.zshrc
echo 'else' >> ~/.zshrc
echo '	print "404: shell configurations not found."' >> ~/.zshrc
echo 'fi' >> ~/.zshrc
echo '# outsourcing end;' >> ~/.zshrc

# install zsh theme and plugin manager
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
curl -L git.io/antigen-nightly > ~/.antigen.zsh

# install fonts
cp -r fonts ~/.fonts
fc-cache -f -v ~/.fonts

# setup custom keyboard mappings
cp Xmodmap ~/.Xmodmap
xmodmap ~/.Xmodmap

# configure WezTerm:
mkdir -p ~/.config/wezterm
cp wezterm.lua ~/.config/wezterm

# install and use nvm 
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
