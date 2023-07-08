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

export ZVM_VI_ESCAPE_BINDKEY='jk'

# ZSH PLUGINS
source ~/.antigen.zsh
#ZSH PLUGINS END 

#antigen zsh pkg manager:
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle jeffreytse/zsh-vi-mode
antigen bundle zsh-users/zsh-autosuggestions
antigen apply
#antigen end

# FIXED COMMANDS 
xmodmap ~/.Xmodmap
#FIXED COMMANDS END

# ALIASES
alias n="nvim"
alias d="dmenu_run"
alias c="git checkout"
alias cB="git checkout -B"
alias btJBL='echo "connect F8:AB:E5:8B:47:D6"'
alias btKEY='echo "EE:62:88:32:17:34"'
alias grademe='bash -c "$(curl https://grademe.fr)"'
alias ubunturun="docker run -it --name my_ubuntu_container my_ubuntu_image"
alias ubuntustart="docker start my_ubuntu_container"
alias dkeygen="docker run -v /path/to/ssh/keys:/root/.ssh my_ubuntu_image"
alias sshadd='eval "$(ssh-agent)" && ssh-add ~/.ssh/id_rs'
alias ubuntu="docker exec -it my_ubuntu_container zsh"
alias ubuntustop="docker stop my_ubuntu_container"
alias ubuntudel="docker rm my_ubuntu_container"
alias dimagedel="docker system prune -a --force --volumes"
alias xrdb="xrdb -merge ~/.Xresources"
alias g="sed -i 's/-O3/-g/g' libs/**/Makefile Makefile"
alias O3="sed -i 's/-g/-O3/g' libs/**/Makefile Makefile"
alias callgrind="valgrind --tool=callgrind"
alias vimbegood='docker run -it --rm brandoncc/vim-be-good:stable'
alias rec='simplescreenrecorder &'
alias zshrc="nvim ~/.dotfiles/zshrc"
alias valflags='valgrind --show-leak-kinds=all --track-origins=yes --trace-children=yes -q'
alias paths='echo $PATH | sed "s/:/\n/g"'
alias norminette='norminette -R CheckForbiddenSourceHeader'
alias red='redshift &'
alias redoff='pkill redshift'
alias dstatus='systemctl status docker' #pra ver se a daemon ta rodando
alias dstart='systemctl start docker'   #pra rodar o docker
alias denable='systemctl enable docker' #pra rodar o docker quando o sistema iniciar
alias drestart=' systemctl restart docker'
alias tree='tre'
alias wezconfig='nvim ~/.config/wezterm/wezterm.lua'
alias git_editor='git config --global core.editor "nvim"'
alias s='git status'
alias lx="\ls -la"
alias ls="exa"
#ALIASES END

#FUNCTIONS
setbranch() {
  local branch=$(git rev-parse --abbrev-ref HEAD)
  git push --set-upstream origin "$branch"
}
#FUNCTIONS END

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
