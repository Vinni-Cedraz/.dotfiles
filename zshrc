# paths
 PATH=$PATH:~/.local
 PATH=$PATH:~/.local/bin/
 PATH=$PATH:~/.local/nvim/bin
 PATH=$PATH:~/.cargo/bin
export ZVM_VI_ESCAPE_BINDKEY='jk'
#paths end


# ZSH PLUGINS
source ~/.antigen.zsh
source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#ZSH PLUGINS END FIXED COMMANDS setxkbmap -option caps:none source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh FIXED COMMANDS END


# ALIASES
alias zshrc="nvim ~/.dotfiles/zshrc"
alias ls="exa"
alias lx="ls -la"
alias gnl='~/42/GNL/./GNL'
alias codelldb="~/./.local/share/nvim/mason/packages/codelldb/codelldb"
alias cc="cc -O3 -Wall -Wextra -Werror"
alias valflags='valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes'
alias gnlcompile='cc get_next_line.c get_next_line_utils.c main.c -o GNL && ./GNL'
alias gnlbonuscompile='cc get_next_line_bonus.c get_next_line_utils_bonus.c main.c -o GNL && ./GNL'
alias trip='~/libft_revisited/./trip.sh'
alias war='~/libft_revisited/./war.sh'
alias paths='echo $PATH | sed "s/:/\n/g"'
alias robot='robot -d reports/ -i'
alias rbt='pip3 install robotframework-seleniumlibrary'
alias cleantrash='~/scripts/./cleantrash.sh'
alias norminette='norminette -R CheckForbiddenSourceHeader'
alias red='redshift &'
alias redoff='pkill redshift'
alias git hsh='git log --pretty=%H -5'
alias find_delete='~/./scripts/shell00/ex08/clean.sh'
alias mygroups='~/./scripts/shell01/ex01/print_groups.sh'
alias myMAC='~/./scripts/shell01/ex04/MAC.sh'
alias a='/usr/bin/mate-screenshot -a'
alias dstatus='systemctl status docker' #pra ver se a daemon ta rodando
alias dstart='systemctl start docker'   #pra rodar o docker
alias denable='systemctl enable docker' #pra rodar o docker quando o sistema iniciar
alias tree='tre'
alias hili='source ~/./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'
alias wezconfig='nvim ~/.config/wezterm/wezterm.lua'

#VINNIVIM ALIASES
export P=~/.config/nvim/lua/user
alias vim='nvim'
alias autocommands='nvim $P/autocommands.lua'
alias keymaps='nvim $P/keymaps.lua'
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
