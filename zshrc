# lines configured by new zsh user
HISTFILE=~/.histfile
HISTSIZE=999999
SAVEHIST=999999
unsetopt autocd beep extendedglob nomatch notify
# End of lines configured by zsh-newuser-install


 export NVM_DIR="$HOME/.nvm"
 [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# paths
 PATH=$PATH:~/.local
 PATH=$PATH:~/.local/bin/
 PATH=$PATH:~/.local/nvim/bin
# paths end

export ZVM_VI_ESCAPE_BINDKEY='jk'


# ZSH PLUGINS
source ~/.antigen.zsh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#ZSH PLUGINS END 


# FIXED COMMANDS 
setxkbmap -option caps:none 
#FIXED COMMANDS END


# ALIASES

alias ubunturun="docker run -it --name dazzling_stonebraker my_ubuntu_image"
alias ubuntustart="docker start dazzling_stonebraker"
alias dkeygen="docker run -v /path/to/ssh/keys:/root/.ssh my_ubuntu_image"
alias sshadd='eval "$(ssh-agent)" && ssh-add ~/.ssh/id_rs'
alias ubuntu="docker exec -it dazzling_stonebraker /bin/zsh"
alias ubuntustop="docker stop dazzling_stonebraker"
alias ubuntudel="docker rm dazzling_stonebraker"
alias dimagedel="docker system prune -a --force --volumes"
alias xrdb="xrdb -merge ~/.Xresources"
alias g="sed -i 's/-O3/-g/g' libs/**/Makefile Makefile"
alias O3="sed -i 's/-g/-O3/g' libs/**/Makefile Makefile"
alias callgrind="valgrind --tool=callgrind"
alias vimbegood='sudo docker run -it --rm brandoncc/vim-be-good:stable'
alias rec='simplescreenrecorder &'
alias zshrc="nvim ~/.dotfiles/zshrc"
alias ls="ls --color=auto"
alias lx="ls -la"
alias gnl='~/42/GNL/./GNL'
alias codelldb="~/./.local/share/nvim/mason/packages/codelldb/codelldb"
alias valflags='valgrind --show-leak-kinds=all --track-origins=yes --leak-check=full -q'
alias gnlcompile='cc get_next_line.c get_next_line_utils.c main.c -o GNL && ./GNL'
alias gnlbonuscompile='cc -g get_next_line_bonus.c get_next_line_utils_bonus.c main.c -o GNL && ./GNL'
alias trip='~/libft_revisited/./trip.sh'
alias war='~/libft_revisited/./war.sh'
alias paths='echo $PATH | sed "s/:/\n/g"'
alias robot='robot -d reports/ -i'
alias rbt='pip3 install robotframework-seleniumlibrary'
alias cleantrash='~/scripts/./cleantrash.sh'
alias norminette='norminette -R CheckForbiddenSourceHeader'
alias red='redshift &'
alias redoff='pkill redshift'
alias gitlogpretty='git log --pretty=%H -5'
alias gitignored="git status -s --ignored | grep '!!' | sed 's/!! //'"
alias find_delete='~/./scripts/shell00/ex08/clean.sh'
alias mygroups='~/./scripts/shell01/ex01/print_groups.sh'
alias myMAC='~/./scripts/shell01/ex04/MAC.sh'
alias a='/usr/bin/mate-screenshot -a'
alias dstatus='systemctl status docker' #pra ver se a daemon ta rodando
alias dstart='systemctl start docker'   #pra rodar o docker
alias denable='systemctl enable docker' #pra rodar o docker quando o sistema iniciar
alias drestart='sudo systemctl restart docker'
alias tree='tre'
alias hili='source ~/./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'
alias wezconfig='nvim ~/.config/wezterm/wezterm.lua'
alias git_editor='git config --global core.editor "nvim"'
alias cdplayer='mplayer cdda:// -cache 5000'
alias s='git status'
alias d='dmenu_run'

#VINNIVIM ALIASES
export P=~/.config/nvim/lua/user
alias autocommands='nvim $P/autocommands.lua'
alias keymaps='nvim $P/keymaps/general_use_keymaps.lua'
alias colorscheme='nvim $P/colorscheme.lua'
alias options='nvim $P/options.lua'
alias plugins='nvim $P/plugins.lua' 
alias transparency='nvim $P/transparent.lua'
alias telescope='nvim $P/telescope.lua'
alias dap='nvim $P/dap.lua'
alias lsp='nvim $P/lsp/mason.lua'
#VINNIVIM ALIASES END
#ALIASES END

# 42 header:
export USER='vcedraz-'
export MAIL='vcedraz-@student.42sp.org.br'
#42 header end;

# antigen zsh pkg manager:
antigen bundle jeffreytse/zsh-vi-mode
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen theme romkatv/powerlevel10k
antigen apply
#antigen end

# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/nfs/homes/vcedraz-/.local/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/nfs/homes/vcedraz-/.local/miniconda3/etc/profile.d/conda.sh" ]; then
#         . "/nfs/homes/vcedraz-/.local/miniconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/nfs/homes/vcedraz-/.local/miniconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# . "$HOME/.cargo/env"
# #<<< conda end <<<

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
