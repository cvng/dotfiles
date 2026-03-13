export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="geoffgarside"
VI_MODE_SET_CURSOR=true
LISTMAX=999

# Plugins
plugins=(
  git
  deno
  zsh-autosuggestions
  zsh-syntax-highlighting
  vi-mode
)

# Load
source "$ZSH/oh-my-zsh.sh"

# Aliases
alias cc="claude"
alias cat="bat"
alias dot="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias ls="eza"
