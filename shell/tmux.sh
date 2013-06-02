# Aliases
alias tm="tmux"
alias tma="tm att"
alias tmn="tm new"
alias tml="tm ls"
alias tmm="tmn -s main"

# Custom Install
if [ -d "/opt/tmux/bin" ]; then
  path_prepend "/opt/tmux/bin"
fi

# Tmux Completion
if [ -f "/usr/local/etc/bash_completion.d/tmux" ]; then
  source "/usr/local/etc/bash_completion.d/tmux"
fi

# Tmuxifier
if [ -d "$DOTSHELL/tmux/tmuxifier" ]; then
  if [ -z $TMUXIFIER ]; then
    export TMUXIFIER="$DOTSHELL/tmux/tmuxifier"
  fi
  export TMUXIFIER_LAYOUT_PATH="$DOTFILES/private/tmux-layouts"
  [[ -s "$TMUXIFIER/init.sh" ]] && source "$TMUXIFIER/init.sh"

  alias m="tmuxifier"
  alias ms="tmuxifier load-session"
  alias mw="tmuxifier load-window"
fi
