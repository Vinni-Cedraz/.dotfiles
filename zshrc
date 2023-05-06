#PATHS
PATH=$PATH:~/.local
PATH=$PATH:~/.local/bin/
PATH=$PATH:/root/.cargo/bin

export PATH=$PATH:/usr/local/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

# ALIASES

alias grademe='bash -c "$(curl https://grademe.fr)"'
alias g="sed -i 's/-O3/-g/g' libs/**/Makefile Makefile"
alias O3="sed -i 's/-g/-O3/g' libs/**/Makefile Makefile"
alias callgrind="valgrind --tool=callgrind"
alias sshadd='eval "$(ssh-agent)" && ssh-add ~/.ssh/id_rs'
alias zshrc="nvim ~/.dotfiles/zshrc"
alias ls="exa"
alias lx="\ls -la"
alias fd="fdfind"
alias valflags='valgrind --show-leak-kinds=all --track-origins=yes --leak-check=full -q'
alias trip='~/libft_revisited/./trip.sh'
alias war='~/libft_revisited/./war.sh'
alias paths='echo $PATH | sed "s/:/\n/g"'
alias norminette='norminette -R CheckForbiddenSourceHeader'
alias drestart='sudo systemctl restart docker'
alias git_editor='git config --global core.editor "nvim"'
alias s='git status'
#vinnivim aliases
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
#vinnivim aliases end
#ALIASES END

#git settings
git_editor # set default git_editor
git config --global user.name "Vinni-Cedraz"
git config --global user.email "Vinni.vcr@gmail.com"
#git settings end

# zsh macros
HISTFILE=~/.histfile
HISTSIZE=999999
SAVEHIST=999999
unsetopt autocd beep extendedglob nomatch notify
export LS_COLORS="di=1;34:ln=1;36:so=1;35:pi=1;33:ex=1;32:bd=1;34;46:cd=1;34;43:su=1;31:sg=1;31:tw=1;32:ow=1;33"
export ZVM_VI_ESCAPE_BINDKEY='jk'
# End of zsh macros


# 42 header:
export USER='vcedraz-'
export MAIL='vcedraz-@student.42sp.org.br'
#42 header end;

# antigen (zsh plugin manager)
source ~/.antigen.zsh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
antigen bundle jeffreytse/zsh-vi-mode
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply
#antigen end

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
