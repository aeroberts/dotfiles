export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export JAVA_HOME=$(/usr/libexec/java_home)

alias envprod='cp ~/.work/.env.prod ~/Projects/snapdragon/.env'
alias envstage='cp ~/.work/.env.stage ~/Projects/snapdragon/.env'
alias envint='cp ~/.work/.env.int ~/Projects/snapdragon/.env'
alias envqa1='cp ~/.work/.env.qa1 ~/Projects/snapdragon/.env'
alias envqa2='cp ~/.work/.env.qa2 ~/Projects/snapdragon/.env'

alias cdsd='cd ~/Projects/snapdragon'

alias gts='git status'
alias gtp='git pull'
alias b='git branch'
alias d='git branch -d'
alias ls='ls -G'
alias glp='git log --oneline'
alias glgd='git log --pretty="%h - %an : %s"'
alias burn='rm -rf /Users/aroberts/Projects/snapdragon/dist/ /Users/aroberts/Projects/snapdragon/tmp/ && yarn install && ember s';
alias huh='sh ~/scripts/welcome.sh'

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \[\033[32m\]\W\[\033[33m\]\$(parse_git_branch)\[\033[00m\]$ "

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

source ~/git-completion.bash
HISTFILESIZE=100000000

if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

source /etc/bashrc_fitbit

nvm use 10 >> /dev/null
sh ~/scripts/welcome.sh
