PATH=$PATH:~/.local
PATH=$PATH:~/.local/bin/
PATH=$PATH:/root/.cargo/bin

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion#PATHS

# ALIASES
# alias valflags='valgrind --show-leak-kinds=all --track-origins=yes --leak-check=full -q'
alias valsupp='valgrind --show-leak-kinds=all --track-origins=yes --leak-check=full --suppressions=readline.supp -q'
alias grademe='bash -c "$(curl https://grademe.fr)"'
alias g="sed -i 's/-O3/-g/g' libs/**/Makefile Makefile"
alias O3="sed -i 's/-g/-O3/g' libs/**/Makefile Makefile"
alias sshadd='eval "$(ssh-agent)" && ssh-add ~/.ssh/id_rs'
alias zshrc="nvim ~/.dotfiles/zshrc"
alias ls="exa --icons"
alias lx="\ls -la"
alias fd="fdfind"
alias paths='echo $PATH | sed "s/:/\n/g"'
alias norminette='norminette -R CheckForbiddenSourceHeader'
alias drestart='sudo systemctl restart docker'
alias git_editor='git config --global core.editor "nvim"'
alias s='git status'
alias c='git checkout'
alias cB='git checkout -B'
alias btJBL='echo "connect F8:AB:E5:8B:47:D6"'
alias btKEY='echo "EE:62:88:32:17:34"'

#ft_neovim aliases:
alias n="nvim"
export P=~/.config/nvim/lua #ft_neovim path
alias autocommands='nvim $P/user/autocommands.lua'
alias keymaps='nvim $P/user/keymaps/general_use_keymaps.lua'
alias colorscheme='nvim $P/core/colorscheme.lua'
alias options='nvim $P/user/options.lua'
alias plugins='nvim $P/plugins/lazy.lua' 
alias lsp='nvim $P/user/lsp/mason.lua'
#ft_neovim aliases end
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
