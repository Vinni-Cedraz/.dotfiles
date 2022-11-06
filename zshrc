# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

 PATH=$PATH:~/.local
 PATH=$PATH:~/.local/bin/

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"

alias zshrc="nvim ~/.dotfiles_/zshrc"
alias la="exa"
alias lx="exa -la"
alias bat="~/.local/bat/bat"
alias gnl='~/GNL/./GNL'
alias codelldb="~/./.local/share/nvim/mason/packages/codelldb/codelldb"
alias cc="cc -g -Wall -Wextra -Werror"
alias valflags='valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes'
alias gnlcompile='cc get_next_line.c get_next_line_utils.c main.c -o GNL && ./GNL'
alias gnlbonuscompile='cc get_next_line_bonus.c get_next_line_utils_bonus.c main.c -o GNL && ./GNL'
alias trip='~/libft_revisited/./trip.sh'
alias war='~/libft_revisited/./war.sh'
alias paths'echo $PATH | sed "s/:/\n/g"'
alias robot='robot -d reports/ -i'
alias rbt='pip3 install robotframework-seleniumlibrary'
alias cleantrash='~/scripts/./clean.sh'
alias norminette='norminette -R CheckForbiddenSourceHeader'

# 42 header:
export USER='vcedraz-'
export MAIL='vcedraz-@student.42sp.org.br'


[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /nfs/homes/vcedraz-/.plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /nfs/homes/vcedraz-/zsh-autosuggestions/zsh-autosuggestions.zsh
