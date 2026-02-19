# oh-my-zsh home
export ZSH=$HOME/.oh-my-zsh

# oh-my-zsh theme
ZSH_THEME="steeef"

# git aliases
alias gpl="git pull --rebase"

# ini, rc, hosts aliases
alias vimrc="vim /Users/gabornadai/.vimrc"
alias zshrc="vim /Users/gabornadai/.zshrc"

# oh-my-zsh case sensitive shell
CASE_SENSITIVE="true"

# oh-my-zsh completion progressbar
COMPLETION_WAITING_DOTS="true"

# oh-my-zsh hyphen-insensitive completion
HYPHEN_INSENSITIVE="true"

# oh-my-zsh history timestamp format
HIST_STAMPS="yyyy-mm-dd"

# oh-my-zsh plugins
plugins=(brew compleat fasd git jira npm sudo wd)

# oh-my-zsh source
source $ZSH/oh-my-zsh.sh

# disable insecure directories check
ZSH_DISABLE_COMPFIX="true"

# path
# export PATH="/opt/homebrew/bin /opt/homebrew/sbin /usr/local/bin /System/Cryptexes/App/usr/bin /usr/bin /bin /usr/sbin /sbin /var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin /var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin /var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin /opt/pmk/env/global/bin /Library/Apple/usr/bin /Users/gabornadai/.local/bin /Users/gabornadai/google-cloud-sdk/bin /Applications/iTerm.app/Contents/Resources/utilities"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# init and set-up compleat
autoload -Uz compinit
compinit
#autoload predict-on
#predict-on
