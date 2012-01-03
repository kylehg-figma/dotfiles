# BEGIN Kyle's Customizations

# Custom bash prompt (bit.ly/qPXkAD)
# Format: 'user@host:directory$ '
PS1='\u@\h:\W$ '

# Useful aliases
alias ls='ls --color=always'
alias ll='ls -l'
alias la='ls -a'

# The go() command:
# cd && ls into directories or open/create files
go() {
  cd $1 2> /dev/null && ls || emacs $1
}

# END Kyle's Customizations
