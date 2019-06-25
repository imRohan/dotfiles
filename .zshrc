# Rohan Likhite 2019

# Theme
ZSH_THEME=sunrise

# primary prompt layout

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

setopt PROMPT_SUBST
PROMPT='%9c%{%F{green}%}$(parse_git_branch)%{%F{none}%} $ '

# Alias
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias gitlog="git log --graph --decorate -p"
alias http-server="python -m SimpleHTTPServer 3000"
alias youtube-dl="/usr/local/bin/youtube-dl"
alias gitshortlog="git shortlog -sn"
alias gitteamlog="git log --all --oneline --no-merges"
alias vtop="vtop --theme wizard"
alias weather="curl wttr.in/Toronto"
alias myip="hostname -I"

# Plugins
plugins=(
 tmux
)

# ENV Vars
# go
export GOPATH=$HOME/go
# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
