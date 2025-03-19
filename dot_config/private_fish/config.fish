if status is-interactive
    # Commands to run in interactive sessions can go here
end

# use starship on startup
starship init fish | source

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
