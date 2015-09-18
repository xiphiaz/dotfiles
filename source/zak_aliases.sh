# Add Aliases here for shortcut functions

# Quick Commands

alias httpmonitor="sudo tcpflow -p -c -i eth0 port 80 | grep -oE '(GET|POST|HEAD) .* HTTP/1.[01]|Host: .*'"

alias myip="curl ipecho.net/plain ; echo"

export JAVA_HOME=/usr

export NODE_PATH=$NODE_PATH:/Users/zak/.nave/installed/default/lib/node_modules

alias a2r="sudo apachectl restart"
alias a2s="sudo apachectl start"
alias irc="irssi"

alias alert="zenity --notification --listen"

# various aliases
tagForDeployment(){ #function is needed for passing params when using aliases
    git tag -a $1 -m "Tag for deployment"
}
commitAddWithComment(){
    git commit -am "$1"
}
commitWithComment(){
    git commit -m "$1"
}
createNewTag(){
    git fetch --tags
    firstnr=$(git tag | sort -V | tail -1 | awk -F'.' '{ print $1 }')
    middlenr=$(git tag | sort -V | tail -1 | awk -F'.' '{ print $2 }')
    lastnr=$(git tag | sort -V | tail -1 | awk -F'.' '{ print $3 }')
    let "newnr = $lastnr + 1"
    git tag -a $firstnr.$middlenr.$newnr -m "Tag for deployment"
    git push --tags
}
alias gpl="git pull origin master" # pull latest 
alias gps="git push origin master" # push 
alias gcm="git checkout master" # checkout master
alias gs="git status" # git status
alias gt="git fetch --tags ; git tag | sort -V" #fetch new tags and show current tags
alias gta=tagForDeployment # tag for deployment use param
alias gc=commitWithComment # Git commit with comment
alias gpt="git push origin --tags" # push the tags to origin
alias gtp="git push origin --tags" # push the tags to origin
alias gcma=commitAddWithComment # Git commit with comment
alias cmpu="composer update -vvv" #composer update
alias cmpd="composer dump-autoload -o" #composer dump autoload file
alias gtap=createNewTag #get tags, increment a new tag

# laravel
alias dbmr="php artisan migrate:refresh --seed"
alias dbm="php artisan migrate --seed"




