# SETTING UP THE FISH SHELL
set -Ua fish_opt_autocd fish_opt_beep fish_opt_extendedglob fish_opt_nomatch fish_opt_notify
test -e ~/.histfile; or set -x HISTFILE ~/.histfile
test -z "$HISTSIZE"; and set -x HISTSIZE 999999
test -z "$SAVEHIST"; and set -x SAVEHIST 999999

# ADD CUSTOM PATHS
contains "*:$HOME/.cargo/bin:*" $fish_user_paths; or set -Ua PATH $PATH ~/.cargo/bin
contains "*:$HOME/.local/bin:*" $fish_user_paths; or set -Ua PATH $PATH ~/.local/bin
contains "*:$HOME/.local/nvim/bin:*" $fish_user_paths; or set -Ua PATH $PATH ~/.local/nvim/bin
contains "*:$HOME/.local/.local/share/nvim/mason/bin:*" $fish_user_paths; or set -Ua PATH $PATH ~/.local/share/nvim/mason/bin
contains "*:$HOME/.cmdline-tools/latest/bin:*" $fish_user_paths; or set -Ua PATH $PATH ~/.cmdline-tools/latest/bin
contains "*:$HOME/.local/jdk-17.0.8+7/bin*" $fish_user_paths; or set -Ua PATH $PATH ~/.local/jdk-17.0.8+7/bin/
contains "*:$HOME/.local/jdk-17.0.8+7/bin/emulator*" $fish_user_paths; or set -Ua PATH $PATH ~/.local/jdk-17.0.8+7/bin/emulator

# SETTING UP OTHER THINGS
test -z "$ANDROID_SDK_HOME"; and set -x ANDROID_SDK_HOME "~/.cmdline-tools/latest"
test -z "$ANDROID_SDK_ROOT"; and set -x ANDROID_SDK_ROOT "$HOME/.cmdline-tools/latest"
test  "$JAVA_HOME"; and set -x JAVA_HOME "$HOME/.local/jdk-17.0.8+7"
test -z "$NVM_DIR"; and set -x NVM_DIR "$HOME/.config/nvm"
xmodmap ~/.Xmodmap
git config --global --add safe.directory $HOME/ubuntu_22.04_container
git config --global user.name "Vinni-Cedraz"
git config --global user.email "planetexpress0101@gmail.com"
# xhost +local:docker

# ALIASES
alias btJBL 'echo "connect F8:AB:E5:8B:47:D6"'
alias btKEY 'echo "EE:62:88:32:17:34"'
alias xmod 'xmodmap ~/.Xmodmap'
alias n "nvim"
alias c "git checkout"
alias d "dmenu_run"
alias k "kitty"
alias cB "git checkout -B"
alias dB "git branch -D"
alias kconf "n ~/.config/kitty/kitty.conf"
alias jsmodule 'npm init -y && npx json -I -f package.json -e \'this.type="module"\' && cat package.json'
alias grademe 'bash -c "(curl https://grademe.fr)"'
alias ubunturun "docker run -it --name my_ubuntu_container my_ubuntu_image"
alias ubuntustart "docker start my_ubuntu_container"
alias ubuntu "docker exec -it my_ubuntu_container zsh"
alias dkeygen "docker run -v /path/to/ssh/keys:/root/.ssh my_ubuntu_image"
alias sshadd 'eval "(ssh-agent)" && ssh-add ~/.ssh/id_rs'
alias ubuntustop "docker stop my_ubuntu_container"
alias ubuntudel "docker rm my_ubuntu_container"
alias dimagedel "docker system prune -a --force --volumes"
alias xrdb "xrdb -merge ~/.Xresources"
alias g "sed -i 's/-O3/-g/g' lib/**/Makefile Makefile"
alias O3 "sed -i 's/-g/-O3/g' lib/**/Makefile Makefile"
alias callgrind "valgrind --tool=callgrind"
alias vimbegood 'docker run -it --rm brandoncc/vim-be-good:stable'
alias rec 'simplescreenrecorder &'
alias fishrc "nvim ~/.dotfiles/fishrc.fish"
alias valflags 'valgrind --track-origins=yes --trace-children=yes -q'
alias valsupp='valgrind --leak-check=full --show-leak-kinds=all --trace-children=yes --suppressions=readline.supp --track-fds=yes --track-origins=yes --trace-children-skip="*/bin/*" -q'
alias paths 'echo $PATH | sed "s/ /\n/g"'
alias norminette 'norminette -R CheckForbiddenSourceHeader'
alias red 'redshift &'
alias redoff 'pkill redshift'
alias dstatus 'systemctl status docker' #pra ver se a daemon ta rodando
alias dstart 'systemctl start docker'   #pra rodar o docker
alias denable 'systemctl enable docker' #pra rodar o docker quando o sistema iniciar
alias drestart 'systemctl restart docker'
alias hili 'source ~/./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'
alias wezconfig 'nvim ~/.config/wezterm/wezterm.lua'
alias git_editor 'git config --global core.editor "nvim"'
alias s 'git status'
alias lx "\ls -la"
alias ls "exa --icons"
alias setbranch 'git push --set-upstream origin (git rev-parse --abbrev-ref HEAD)'
#ALIASES END

# FUNCTIONS
function getDownload;
	cp (fd -i -t f $argv[1] ~/Downloads) .;
end
function cleanDownload;
	rm (fd --full-path -i -t f $argv[1] ~/Downloads);
end
# FUNCTIONS END

#VINNIVIM ALIASES
set -x N ~/.config/nvim/
set -x P $N/lua/user
alias autocommands 'nvim $P/autocommands.lua'
alias keymaps 'nvim $P/keymaps/general_use_keymaps.lua'
alias colorscheme 'nvim $N/lua/core/colorscheme.lua'
alias options 'nvim $P/options.lua'
alias plugins 'nvim $N/lua/plugins/lazy.lua' 
alias transparency 'nvim $P/transparent.lua'
alias telescope 'nvim $P/telescope.lua'
alias dap 'nvim $P/dap.lua'
alias lsp 'nvim $P/lsp/mason.lua'
#VINNIVIM ALIASES END

# 42 header:
set -x USER 'vcedraz-'
set -x MAIL 'vcedraz-@student.42sp.org.br'
#42 header end;
