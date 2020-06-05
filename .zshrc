# oh-my-zsh home
export ZSH=$HOME/.oh-my-zsh

# oh-my-zsh theme
ZSH_THEME="steeef"

# git aliases
alias gpl="git pull --rebase"

# ini, rc, hosts aliases
alias vimrc="vim /Users/gabornadai/.vimrc"
alias zshrc="vim /Users/gabornadai/.zshrc"
alias hosts="vim /etc/hosts"

# oh-my-zsh case sensitive shell
CASE_SENSITIVE="true"

# oh-my-zsh completion progressbar
COMPLETION_WAITING_DOTS="true"

# oh-my-zsh history timestamp format
HIST_STAMPS="yyyy-mm-dd"

# oh-my-zsh plugins
plugins=(brew composer compleat fasd git jira npm sudo wd)

# oh-my-zsh source
source $ZSH/oh-my-zsh.sh

# disable insecure directories check
ZSH_DISABLE_COMPFIX="true"

# path
# export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/X11/bin"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# init and set-up compleat
autoload -Uz compinit
compinit
#autoload predict-on
#predict-on
