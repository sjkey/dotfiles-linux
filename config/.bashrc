# Change directory and list contents
function cd() {
    builtin cd "$@" && ls
}

# ~~~~~~~~~~~~~~~ Prompt ~~~~~~~~~~~~~~~~~~~~~~~~

eval "$(starship init bash)"

# ~~~~~~~~~~~~~~~ Aliases ~~~~~~~~~~~~~~~~~~~~~~~~

alias up="cd .."
alias up2="cd ../.."
alias c="clear"

alias gp='git pull'
alias gst='git status'