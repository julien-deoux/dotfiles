if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

