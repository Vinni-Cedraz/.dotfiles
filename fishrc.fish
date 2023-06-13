set -x HISTFILE ~/.histfile
set -x HISTSIZE 999999
set -x SAVEHIST 999999
set -Ua fish_opt_autocd fish_opt_beep fish_opt_extendedglob fish_opt_nomatch fish_opt_notify

set -x PATH $PATH ~/.local
set -x PATH $PATH ~/.local/bin/
set -x PATH $PATH ~/.local/nvim/bin
set -x PATH $PATH ~/.cargo/bin

# ALIASES
alias n "nvim"
alias grademe 'bash -c "(curl https://grademe.fr)"'
alias ubunturun "sudo docker run -it --name my_ubuntu_container my_ubuntu_image"
alias ubuntustart "sudo docker start my_ubuntu_container"
alias dkeygen "docker run -v /path/to/ssh/keys:/root/.ssh my_ubuntu_image"
alias sshadd 'eval "(ssh-agent)" && ssh-add ~/.ssh/id_rs'
alias ubuntu "sudo docker exec -it my_ubuntu_container /bin/zsh"
alias ubuntustop "sudo docker stop my_ubuntu_container"
alias ubuntudel "sudo docker rm my_ubuntu_container"
alias dimagedel "sudo docker system prune -a --force --volumes"
alias xrdb "xrdb -merge ~/.Xresources"
alias g "sed -i 's/-O3/-g/g' libs/**/Makefile Makefile"
alias O3 "sed -i 's/-g/-O3/g' libs/**/Makefile Makefile"
alias callgrind "valgrind --tool=callgrind"
alias vimbegood 'sudo docker run -it --rm brandoncc/vim-be-good:stable'
alias rec 'simplescreenrecorder &'
alias fishrc "nvim ~/.dotfiles/fishrc.fish"
alias valflags 'valgrind --track-origins=yes --trace-children=yes -q'
alias valminish 'valgrind --track-origins=yes --trace-children=yes --leak-check=full --suppressions=readline.supp'
alias paths 'echo $PATH | sed "s/:/\n/g"'
alias norminette 'norminette -R CheckForbiddenSourceHeader'
alias red 'redshift &'
alias redoff 'pkill redshift'
alias dstatus 'systemctl status docker' #pra ver se a daemon ta rodando
alias dstart 'systemctl start docker'   #pra rodar o docker
alias denable 'systemctl enable docker' #pra rodar o docker quando o sistema iniciar
alias drestart 'sudo systemctl restart docker'
alias hili 'source ~/./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'
alias wezconfig 'nvim ~/.config/wezterm/wezterm.lua'
alias git_editor 'git config --global core.editor "nvim"'
alias s 'git status'
alias lx "\ls -la"
alias ls "exa"
#ALIASES END

#VINNIVIM ALIASES
set -x P ~/.config/nvim/lua/user
alias autocommands 'nvim $P/autocommands.lua'
alias keymaps 'nvim $P/keymaps/general_use_keymaps.lua'
alias colorscheme 'nvim $P/colorscheme.lua'
alias options 'nvim $P/options.lua'
alias plugins 'nvim $P/plugins.lua' 
alias transparency 'nvim $P/transparent.lua'
alias telescope 'nvim $P/telescope.lua'
alias dap 'nvim $P/dap.lua'
alias lsp 'nvim $P/lsp/mason.lua'
#VINNIVIM ALIASES END

# 42 header:
set -x USER 'vcedraz-'
set -x MAIL 'vcedraz-@student.42sp.org.br'
#42 header end;

