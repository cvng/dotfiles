# Path
export PATH="$HOME/.local/bin:$PATH"

# Editor
export EDITOR='zed --wait'

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Cargo
source "$HOME/.cargo/env"

# Deno
source "$HOME/.deno/env"

# NVM
export NVM_DIR="$HOME/.nvm"
source "$NVM_DIR/nvm.sh"
source "$NVM_DIR/bash_completion"
