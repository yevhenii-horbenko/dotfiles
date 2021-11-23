# Setup fzf
# ---------
if [[ ! "$PATH" == */home/yevhenii/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/yevhenii/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/yevhenii/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/yevhenii/.fzf/shell/key-bindings.zsh"
