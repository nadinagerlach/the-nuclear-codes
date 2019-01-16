# Path to your oh-my-zsh installation.
export ZSH=/Users/ngerlach/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Default User
# for some reason not working; just removes the user entirely
# DEFAULT_USER="ngerlach"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git cloudapp node npm bower brew osx extract z)

# User configuration

export PATH="/usr/local/heroku/bin:/Users/ngerlach/.rbenv/shims:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Aliases

## Shortcuts
alias ll='ls -al'
alias editgit='code-insiders ~/.gitconfig'
alias editbash='code-insiders ~/.bash_profile'
alias resource='source ~/.bash_profile && echo "Done!"'
alias vi=vim
alias dbm="bin/rake db:migrate"
alias serve='python -m SimpleHTTPServer' # serves on localhost:8000

## Go places
alias gt_collab='cd ~/code/soulmates-collab'

## Git commands
alias log='git log'
alias diff='git diff'
alias branch='git branch'
alias st='git status'
alias fetch='git fetch'
alias push='git push origin head'
alias pull='git pull'
alias fp='fetch && pull'
alias gmm='git merge master'
alias gmghp='git merge gh-pages'
alias recent='git for-each-ref --sort=-committerdate refs/heads/'
alias branch_new="git for-each-ref --sort=-committerdate refs/heads/ --format='%(refname:short)'"
alias gh_prep="script/bootstrap && bin/rake db:migrate db:test:prepare && git checkout -- db/"
alias gmm="git pull && git merge origin/master"
alias merge master="git pull && git merge origin/master"

## Git branch switching
alias master='git co master'
alias ghp='git co gh-pages'

## Switch repos
DIR=~/work
alias h='cd ~/'
alias w='cd ${DIR}'
alias bs='cd ${DIR}/bootstrap'

## Server guick starts
alias ss='script/server'
alias js='bundle exec jekyll serve --watch'
alias bejs='bundle exec jekyll serve --watch'
alias simpleserver='python -m SimpleHTTPServer 4000'
alias simpleserve='python -m SimpleHTTPServer 4000'
alias gtest='testrb test/integration/bundle_test.rb'

## IP stuff
alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder; echo 'Flushed DNS, btw here is your hosts file just in case:'; cat /etc/hosts"

## Mobile iOS testing
alias ios='open /Applications/Xcode.app/Contents/Applications/iPhone\ Simulator.app'

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi