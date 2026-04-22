# Paths
fish_add_path "/opt/homebrew/bin"

# Sources
brew shellenv fish | source
tv init fish | source
but completions fish | source

if status is-interactive
    # Aliases
    alias cat="bat"
    alias find="fd"
    # alias git="but"
    alias grep="rg"
    alias ls="eza --git-ignore --group-directories-first --octal-permissions"
    alias ps="procs"
    alias top="btm"
    alias tree="ls --tree"

    # Abbreviations
    abbr --add ... "../.."
    abbr --add cc "claude --continue"
    abbr --add dot "git --git-dir=$HOME/.dotfiles"
    abbr --add ghpr "gh pr create --web --assignee=@me"

    # Variables
    set --global fish_key_bindings fish_vi_key_bindings
    set --global --export EDITOR "zed --wait"
    set --global --export MANPAGER "sh -c 'col -bx | bat --language=man --plain'"
    set --global --export PAGER "bat"
    set --global --export XDG_CONFIG_HOME "$HOME/.config"
end

function brew
    command brew $argv
    if test "$argv[1]" = "install" -o "$argv[1]" = "uninstall"
        command brew bundle dump --force --file="$HOME/Brewfile"
    end
end
