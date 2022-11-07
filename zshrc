source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source ~/.antigen/antigen.zsh

 PATH=$PATH:~/.local
 PATH=$PATH:~/.local/bin/

alias zshrc="lvim ~/.dotfiles/zshrc"
alias la="exa"
alias lx="exa -la"
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
alias cleantrash='~/scripts/./clean.sh'
alias norminette='norminette -R CheckForbiddenSourceHeader'
alias red='redshift &'
alias redoff='pkill redshift'
# 42 header:
export USER='vcedraz-'
export MAIL='vcedraz-@student.42sp.org.br'
# 42 header end;

# antigen zsh pkg manager:
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply
# antigen end
