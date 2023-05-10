# lines configured by new zsh user
HISTFILE=~/.histfile
HISTSIZE=999999
SAVEHIST=999999
unsetopt autocd beep extendedglob nomatch notify
# End of lines configured by zsh-newuser-install

PATH=$PATH:~/.local
PATH=$PATH:~/.local/bin/
PATH=$PATH:~/.local/nvim/bin
PATH=$PATH:~/.cargo/bin
PATH=$PATH:~/.local/share/nvim/mason/bin
PATH=$PATH:/nfs/homes/vcedraz-/.local/wezterm/usr/bin
PACKPATH=$PACKPATH:~/.local/share/nvim/site/pack/packer/start

export ZVM_VI_ESCAPE_BINDKEY='jk'

# ZSH PLUGINS
source ~/.antigen.zsh
#ZSH PLUGINS END 

# antigen zsh pkg manager:
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle jeffreytse/zsh-vi-mode
antigen bundle zsh-users/zsh-autosuggestions
antigen apply
#antigen end

# FIXED COMMANDS 
xmodmap ~/.Xmodmap
#FIXED COMMANDS END

# ALIASES
alias lux='lxqt-config-brightness'
alias grademe='bash -c "$(curl https://grademe.fr)"'
alias ubunturun="sudo docker run -it --name my_ubuntu_container my_ubuntu_image"
alias ubuntustart="sudo docker start my_ubuntu_container"
alias dkeygen="sudo docker run -v /path/to/ssh/keys:/root/.ssh my_ubuntu_image"
alias sshadd='eval "$(ssh-agent)" && ssh-add ~/.ssh/id_rs'
alias ubuntu="sudo docker exec -it my_ubuntu_container /bin/zsh"
alias ubuntustop="sudo docker stop my_ubuntu_container"
alias ubuntudel="sudo docker rm my_ubuntu_container"
alias dimagedel="sudo docker system prune -a --force --volumes"
alias xrdb="xrdb -merge ~/.Xresources"
alias g="sed -i 's/-O3/-g/g' libs/**/Makefile Makefile"
alias O3="sed -i 's/-g/-O3/g' libs/**/Makefile Makefile"
alias callgrind="valgrind --tool=callgrind"
alias vimbegood='sudo docker run -it --rm brandoncc/vim-be-good:stable'
alias rec='simplescreenrecorder &'
alias zshrc="nvim ~/.dotfiles/zshrc"
alias valflags='valgrind --show-leak-kinds=all --track-origins=yes --trace-children=yes -q'
alias paths='echo $PATH | sed "s/:/\n/g"'
alias norminette='norminette -R CheckForbiddenSourceHeader'
alias red='redshift &'
alias redoff='pkill redshift'
alias dstatus='systemctl status sudo docker' #pra ver se a daemon ta rodando
alias dstart='systemctl start sudo docker'   #pra rodar o sudo docker
alias denable='systemctl enable sudo docker' #pra rodar o sudo docker quando o sistema iniciar
alias drestart=' systemctl restart sudo docker'
alias tree='tre'
alias hili='source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'
alias wezconfig='nvim ~/.config/wezterm/wezterm.lua'
alias git_editor='git config --global core.editor "nvim"'
alias cdplayer='mplayer cdda:// -cache 5000'
alias s='git status'
alias d='dmenu_run'
alias lx="\ls -la"
alias ls="exa"
#ALIASES END

#VINNIVIM ALIASES
export P=~/.config/nvim/lua/
alias nvimdir='cd $P'
alias autocommands='nvim $P/user/autocommands.lua'
alias keymaps='nvim $P/user/keymaps/general_use_keymaps.lua'
alias colorscheme='nvim $P/core/colorscheme.lua'
alias options='nvim $P/user/options.lua'
alias plugins='nvim $P/plugins/lazy.lua' 
alias telescope='nvim $P/user/telescope.lua'
alias dap='nvim $P/user/dap.lua'
alias lsp='nvim $P/user/lsp/mason.lua'
#VINNIVIM ALIASES END

# 42 header:
export USER='vcedraz-'
export MAIL='vcedraz-@student.42sp.org.br'
#42 header end;
