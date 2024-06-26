# Helpful aliases
alias ls="ls -G"
alias l="ls"
alias ll="l -l"
alias la="l -a"
alias lla="l -la"

alias rm="rm -v"

alias cleanup="rm *~"
alias untar="tar -xzvf"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias servedir="python -m http.server"
alias linkfrom="ln -s"
alias gitstatusall="find . -maxdepth 1 -mindepth 1 -type d -exec sh -c '(echo {} && cd {} && git s && echo)' \;"

# Setup autocompletion (includes git)
autoload -Uz compinit && compinit

# touchp: creates a file and its parent directories
touchp() {
    mkdir -p "$(dirname "$1")" && { [ ! -e "$1" ] && touch "$1"; } || echo "Error: File already exists"
}

# Go: Combines cd and ls for directories, or opens files in EMACS.
function g {
    cd $1 2> /dev/null && ls || $EDITOR $1
}

# Poetry
export PATH="$HOME/.poetry/bin:$PATH"

# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# This seems like it shouldn't be necessary but it is
export APPLE_SSH_ADD_BEHAVIOR="macos"
ssh-add -A 2> /dev/null


# Figma
# =====

alias gf="g ~/figma/figma"
alias gfc="gf ~/figma/figma && code figma.code-workspace"

alias tt='RACK_ENV=test bundle exec ruby $1'
ttt() { RACK_ENV=test bundle exec ruby "$1" --name="$2" }

alias runtestdeps="docker compose -f local-docker-compose.yml up"

alias exec-dev="access aws exec dev-admin --"
alias exec-staging="access aws exec staging-admin --"
alias exec-prod="access aws exec prod-admin --"

alias tfstaging="TF_WORKSPACE=staging access aws exec staging-admin -- terraform"
alias tfprod="TF_WORKSPACE=production access aws exec prod-admin -- terraform"

export PATH="${HOMEBREW_PREFIX}/opt/openssl/bin:$PATH"
export PKG_CONFIG_PATH="/opt/homebrew/opt/zlib/lib/pkgconfig:/usr/local/opt/zlib/lib/pkgconfig:$PKG_CONFIG_PATH"
export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@3/lib/pkgconfig:/usr/local/opt/openssl@3/lib/pkgconfig:$PKG_CONFIG_PATH"
export GOPATH="$HOME/go"
export PATH="$HOME/go/bin:$PATH"
eval "$(rbenv init -)"
export RACK_ENV=development
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
export AWS_CONFIG_FILE="$HOME/figma/figma/config/aws/sso_config"
export PATH="/Users/khardgrave/figma/figma:$PATH"

# For fig-scm/branchless - interferes too much as of now
# export PATH=/Users/khardgrave/figma/figma/devex/bins:$PATH

source /Users/khardgrave/.figbt/figbtrc # MANAGED BY FIGBT

# =========
# End Figma

# Oh My Zsh RC Below
# ==================

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/opt/homebrew/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/khardgrave/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(poetry)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/opt/homebrew/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# End Oh My Zsh RC
# ================
source /Users/khardgrave/.config/op/plugins.sh
#compdef gt
###-begin-gt-completions-###
#
# yargs command completion script
#
# Installation: gt completion >> ~/.zshrc
#    or gt completion >> ~/.zprofile on OSX.
#
_gt_yargs_completions()
{
  local reply
  local si=$IFS
  IFS=$'
' reply=($(COMP_CWORD="$((CURRENT-1))" COMP_LINE="$BUFFER" COMP_POINT="$CURSOR" gt --get-yargs-completions "${words[@]}"))
  IFS=$si
  _describe 'values' reply
}
compdef _gt_yargs_completions gt
###-end-gt-completions-###

