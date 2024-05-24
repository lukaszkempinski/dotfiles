function mkcd() { 
    mkdir -p $1 && cd $1 
}

function cdf() { 
    cd *$1*/ 
}

function cl() {
    DIR="$*";
    if [ $# -lt 1 ]; then
        DIR=$HOME;
    fi;
    builtin cd "${DIR}" && ls -F --color=auto
}

function up() {
    local DIR=$PWD
    local TARGET=$1
    while [ ! -e "$DIR/$TARGET" ] && [ "$DIR" != "/" ]; do
        DIR=$(dirname "$DIR")
    done
    test "$DIR" != "/" && echo "$DIR/$TARGET"
}

# Traversing through file system
alias home='cd ~/'
alias ..='cd ..'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'

# Search / find / list
alias gh='history|grep'
alias l.='ls -d .* --color=auto'

# Python venv
alias ve='python3 -m venv ./venv'
alias va='source ./venv/bin/activate'

# Git
alias startgit='cd `git rev-parse --show-toplevel` && git checkout main && git pull'
alias cg='cd `git rev-parse --show-toplevel`'

# Ubuntu
alias update='sudo apt-get update && sudo apt-get upgrade'
