# Setup fzf
# ---------
if [[ ! "$PATH" == */home/carobb/.vim/bundle/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/carobb/.vim/bundle/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/carobb/.vim/bundle/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/carobb/.vim/bundle/fzf/shell/key-bindings.zsh"
