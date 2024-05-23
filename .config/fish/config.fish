if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx EDITOR nvim
set -gx __fish_ls_command eza --icons
#eval "$(fzf --fish)"
set -gx RANGER_LOAD_DEFAULT_RC FALSE
set -gx SSH_AUTH_SOCK $XDG_RUNTIME_DIR/gcr/ssh

starship init fish | source
