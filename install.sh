#!/usr/bin/zsh

# create .zshrc if it doesn't exist
touch ~/.zshrc

# install bat
mv bat /bat
echo PATH=$PATH:/bat >> ~/.zshrc

# write shell configurations to .zshrc
echo '# outsourcing my shell configurations directly from dotfiles repo:' >> ~/.zshrc
echo 'if [ -f ~/.dotfiles/zshrc ]; then' >> ~/.zshrc
echo '	source ~/.dotfiles/zshrc' >> ~/.zshrc
echo 'else' >> ~/.zshrc
echo '	print "404: shell configurations not found."' >> ~/.zshrc
echo 'fi' >> ~/.zshrc
echo '# outsourcing end;' >> ~/.zshrc
