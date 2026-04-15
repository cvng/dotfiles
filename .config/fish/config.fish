if status is-interactive
    # Aliases
    alias cat="bat"
    alias ls="eza"

    # Abbreviations
    abbr --add ... "../.."
    abbr --add cc "claude"
    abbr --add dot "git --git-dir=$HOME/.dotfiles"

    # Variables
    set --global fish_key_bindings fish_vi_key_bindings
    set --global --export EDITOR "zed --wait"
    set --global --export MANPAGER "sh -c 'col -bx | bat --language=man --plain'"
end

# Sources
/opt/homebrew/bin/brew shellenv fish | source
