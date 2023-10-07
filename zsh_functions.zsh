#FUNCTIONS
function setbranch_function() {
  local branch=$(git rev-parse --abbrev-ref HEAD)
  git push --set-upstream origin "$branch"
}

function create_chapter() {

  if [ $# -lt 3 ]; then
    echo "Usage: chapter sub-chapter1 sub-chapter2 sub-chapter3..."
    return 1
  fi
  outter_dir="$1"
  shift 1

	local function create_makefiles() {
		inner_dir="$1"
		outter_dir="$2"
		echo "  $inner_dir \\" >> "$outter_dir/Makefile"
		echo "TESTS =		\\" > "$outter_dir/$inner_dir/Makefile"
		echo "  $inner_dir \\" >> "$outter_dir/$inner_dir/Makefile"
		echo "" >> "$outter_dir/$inner_dir/Makefile"
		cat $HOME/.dotfiles/templates/inner_makefile >> "$outter_dir/$inner_dir/Makefile"
	}

	local static function create_compile_commands() {
		inner_dir="$1"
		outter_dir="$2"
		echo "[" > $outter_dir/$inner_dir/compile_commands.json
		echo " {" >> $outter_dir/$inner_dir/compile_commands.json
		echo "  \"directory\": \"$HOME/MiniRT/tests/$outter_dir/$inner_dir\"," >> $outter_dir/$inner_dir/compile_commands.json
		cat $HOME/.dotfiles/templates/compile_commands1 >> $outter_dir/$inner_dir/compile_commands.json
		echo "   \"$inner_dir.c\"," >> $outter_dir/$inner_dir/compile_commands.json
		cat $HOME/.dotfiles/templates/compile_commands2 >> $outter_dir/$inner_dir/compile_commands.json
		echo "   \"$inner_dir\"" >> $outter_dir/$inner_dir/compile_commands.json
		echo "  ]," >> $outter_dir/$inner_dir/compile_commands.json
		echo "  \"file\": \"$inner_dir.c\"" >> $outter_dir/$inner_dir/compile_commands.json
		echo " }" >> $outter_dir/$inner_dir/compile_commands.json
		echo "]" >> $outter_dir/$inner_dir/compile_commands.json
	}

  mkdir -p "$outter_dir"
  echo "TESTDIRS = 		\\" > "$outter_dir/Makefile"
  for inner_dir in "$@";
  do
    mkdir -p "$outter_dir/$inner_dir"
	create_makefiles $inner_dir $outter_dir
	create_compile_commands $inner_dir $outter_dir
   	touch $outter_dir/$inner_dir/$inner_dir.c
	chmod 666 $outter_dir/$inner_dir/$inner_dir.c
  done
  echo "" >> $outter_dir/Makefile
  cat $HOME/.dotfiles/templates/outter_makefile >> $outter_dir/Makefile
  exec zsh;
}

function zle-line-init zle-keymap-select {
    if [[ $KEYMAP == vicmd ]]; then
        bindkey -M vicmd 'jk' vi-cmd-mode
    else
        bindkey -M viins 'jk' vi-cmd-mode
    fi
}
#FUNCTIONS END
