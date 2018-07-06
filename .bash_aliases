alias l4jconf="atom /Users/mikeestrada/OneDrive/Documents/l4j/log4j.properties"
alias home="cd ~"

#alias python='python3'
alias vi='nvim'
alias vim='vi'

alias ls='ls -G'

#CloudFoundry
alias cfat="CF_HOME=~/.cf/at cf"
alias cfnp="CF_HOME=~/.cf/np cf"
alias cfza="CF_HOME=~/.cf/za cf"
alias cfzb="CF_HOME=~/.cf/zb cf"

#Git
alias g='git'
alias ga='git add'
alias gp='git push'
alias gs='git status'
alias gc='git commit -m'
alias gcl='git clone'
alias gco='git checkout'
alias opsman-np='ssh ubuntu@pcfopsmanager-np.homedepot.com'

#git repostitories
alias gogw='cd ~/git'
alias gogp='cd ~/gitpersonal'

#GO
alias gg='go get'
alias gohome='cd $GOPATH'
alias gobin='cd $GOBIN'
alias setgo='export GOPATH=$(pwd)'

#fly
alias fa='fly -t data-pipeline'

#########
## GCP ##
#########

#gprojects
alias setgcp='gcloud config set project'  #set the default project you are targeting
alias setgcpnp='setgcp np-store-ops-thd'  # Store ops non-prod
alias setgcppr='setgcp pr-store-ops-thd'  # Store ops Production

# BQ
alias bqq='bq query --use_legacy_sql=false'
alias bqlsp='bq ls -j'

#bucket
alias gsls='gsutil ls'
alias gsrm='gsutil rm'
alias gsusers='gsutil iam get'

alias pycharm='open /Applications/PyCharm.app'
