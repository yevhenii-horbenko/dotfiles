# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/yevheniihorbenko/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/yevheniihorbenko/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/yevheniihorbenko/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/yevheniihorbenko/.fzf/shell/key-bindings.zsh"
