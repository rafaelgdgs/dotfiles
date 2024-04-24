if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx EDITOR nvim
set -gx __fish_ls_command eza
#eval "$(fzf --fish)"

starship init fish | source
