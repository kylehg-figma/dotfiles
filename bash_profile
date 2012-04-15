# BEGIN Kyle's Customizations

# Custom bash prompt (bit.ly/qPXkAD)
# Format: 'user@host:directory$ '
PS1='\u@\h:\W$ '

# Useful aliases
alias ls="ls --color=always"
alias l="ls"
alias ll="l -l"
alias la="l -a"
alias lla="l -la"

# Default to Emacs
export EDITOR=emacs

# The go() command:
# cd && ls into directories or open/create files
go() {
  cd $1 2> /dev/null && ls || $EDITOR $1
}

# END Kyle's Customizations
