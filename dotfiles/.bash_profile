# Get the Git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Make Git branch a variable
branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')

# Custom bash prompt
#
# Includes custom character for the prompt, path, and Git branch name.
#
# Source: kirsle.net/wizards/ps1.html
export PS1="\n\[$(tput bold)\]\[$(tput setaf 5)\]➜ \[$(tput setaf 6)\]\w\[$(tput setaf 3)\]\$(parse_git_branch) \[$(tput sgr0)\]"

export PATH=/opt/local/bin:/opt/local/sbin:${PATH}

# Aliases

## Shortcuts
alias ll='ls -al'
alias editgit='code-insiders ~/.gitconfig'
alias editbash='code-insiders ~/.bash_profile'
alias resource='source ~/.bash_profile && echo "Done!"'
alias vi=vim
alias nadina=sudo
alias cdb='docker-compose run web scripts/wait-for-it.sh db:5432 -- "rake db:drop db:setup"'
alias cdown='docker stop $(docker ps -a -q)'
alias chard='docker rmi $(docker images -q)'
alias cbuild='docker-compose build'
alias cup='docker-compose up'
alias dev='git checkout development'
alias publish='git push -u origin ${branch}'
alias get='git add . && git commit -m "Saved changes pre-rebase" && git checkout development && git pull'
alias switch="git checkout"
alias merge="git merge development"
alias rebase="git rebase development"

## Git commands
alias log='git log'
alias wut='git log master...${branch} --oneline'
alias diff='git diff'
alias branch='git branch'
alias st='git status'
alias fetch='git fetch'
alias push='git push origin head'
alias pull='git pull'
alias fp='fetch && pull'
alias gmm='git merge master'
alias recent='git for-each-ref --sort=-committerdate refs/heads/'
alias branch_new="git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)'"

## Git branch switching
alias master='git co master'
alias ghp='git co gh-pages'

## Switch repos
DIR=~/work
alias h='cd ~/'
alias w='cd ${DIR}'
alias bs='cd ${DIR}/bootstrap'

## Core GitHub apps
alias gh='cd ~/github'
alias gg='cd ~/github/github'

## Server guick starts
alias ss='script/server'
alias js='bundle exec jekyll serve --watch'
alias ps='python -m SimpleHTTPServer 4000'
alias gtest='testrb test/integration/bundle_test.rb'

## Mobile iOS testing
alias ios='open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app'

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export NPM_TOKEN=8fe931b6-0b08-4812-8b94-98ee02a41eed

export NVM_DIR="/Users/ngerlach/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
