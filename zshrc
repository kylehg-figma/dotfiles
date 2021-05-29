# Helpful aliases
alias ls="ls -G"
alias l="ls"
alias ll="l -l"
alias la="l -a"
alias lla="l -la"

alias cleanup="rm *~"
alias untar="tar -xzvf"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias servedir="python -m http.server"
alias linkfrom="ln -s"
alias gitstatusall="find . -maxdepth 1 -mindepth 1 -type d -exec sh -c '(echo {} && cd {} && git s && echo)' \;"

# ASDF version manager
. /usr/local/opt/asdf/asdf.sh

# Setup autocompletion (includes git)
autoload -Uz compinit && compinit

# Put secret configuration settings in ~/.secrets
[ -f ~/.secrets ] && source ~/.secrets

# Go: Combines cd and ls for directories, or opens files in EMACS.
g() {
    cd $1 2> /dev/null && ls || $EDITOR $1
}

# Customize prompt
source ~/.bash_prompt

