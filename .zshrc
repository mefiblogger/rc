# oh-my-zsh home
export ZSH=$HOME/.oh-my-zsh

# oh-my-zsh theme
ZSH_THEME="steeef"

# apache aliases
alias apache="sudo /usr/local/bin/apachectl"
alias apache-restart="sudo /usr/local/bin/apachectl -k restart"

# git aliases
alias gpl="git pull --rebase"

# smyfony aliases
alias sf="php symfony"
alias cc="php symfony cc"

# ini, rc, hosts aliases
alias settingsini="vim /etc/icom/settings.ini;php /Users/gabornadai/Sites/icomfrontend/symfony cc"
alias mapsdb_settingsini="vim /etc/icom/settings_mapsdb.ini;php /Users/gabornadai/Sites/mapsdb/symfony cc"
alias hirdadmin_settingsini="vim /etc/icom/settings_hirdadmin.ini;php /Users/gabornadai/Sites/hirdadmin/symfony cc"
alias searchengine_settingsini="vim /etc/icom/settings_searchengine.ini"
alias phpini="vim /usr/local/etc/php/5.3/php.ini"
alias vimrc="vim /Users/gabornadai/.vimrc"
alias zshrc="vim /Users/gabornadai/.zshrc"
alias hosts="vim /etc/hosts"
alias vhosts="vim /usr/local/Cellar/apache22/2.2.24/conf/extra/httpd-vhosts.conf"

# phpunit aliases
alias phpunit="php /Users/gabornadai/.composer/vendor/phpunit/phpunit/phpunit.php"

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

# path
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/X11/bin:/Users/gabornadai/Sites/icom:/Users/gabornadai/Sites/icom/lib:/Users/gabornadai/Sites/icom/include"

# oh-my-zsh jira settings
export JIRA_URL="https://jira.arkon.hu"

# phpstorm xdebug config
export XDEBUG_CONFIG='\''idekey=MEFI remote_host=localhost profiler_enable=1'

# gitlab alias
alias gl="php /Users/gabornadai/Sites/gitlabtools/bin/gitlab.php"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# update function
function u {
    autoload colors
    colors

    # git pull --rebase
    if [[ -d .git ]]; then
        clear

        echo
        echo "$fg[yellow] -> Updating repository with rebase"
        echo $fg[white]

        gpl
    else
        echo
        echo "$fg[red] You are not in a Git repository, sweetheart. $fg[white]"
        return
    fi

    # composer update
    if [[ -f composer.json ]]; then

        echo
        echo "$fg[yellow] -> Running composer update"
        echo $fg[white]

        composer update;
    fi

    # symfony cc
    if [[ -f symfony ]]; then
        echo
        echo "$fg[yellow] -> Clearing symfony cache $fg[white]"
        echo
        cc
    fi

    echo
    echo "$fg[yellow] Everything is going extremely well. :) $fg[white]"
}

# fish-like autoload
autoload predict-on
predict-on
