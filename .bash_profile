# Set architecture flags
export GOBIN=$HOME/gobits/bin
export DRONE_TOKEN=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZXh0IjoiZXh3NTM3MyIsInR5cGUiOiJ1c2VyIn0.UlIoY9hZFuQBPs4SelSsvmTIUWkub1F-YTnJmIfn4Xo
export DRONE_SERVER=http://drone.apps-np.homedepot.com
export ARCHFLAGS="-arch x86_64"
#export M2_HOME=/usr/local/Cellar/maven/3.3.9/bin
export PATH=$PATH:/Users/mikeestrada/scripts/bin:/Users/mikeestrada/play/activator-1.2.12-minimal:$GOBIN:/usr/local/sbin
export JAVA_HOME=$(/usr/libexec/java_home)
export GOPATH=$HOME/golang
export HOMEBREW_GITHUB_API_TOKEN="f949cf9e691d0e3d18e318237a6d055b9fd30480"
launchctl setenv PATH $PATH
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

function cf-login() {
  url="api.run-$1.homedepot.com"

  if [[ $1 == "za" ]]
    then
    url="api.run.homedepot.com"
  fi

  CF_HOME=~/.cf/$1 cf login -a $url -u mxe8yq0
}

alias cf-login="cf-login"

source ~/.zshrc

#Added for z: https://gist.github.com/mischah/8149239
#if command -v brew >/dev/null 2>&1; then
#	# Load rupa's z if installed
#	[ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
#fi
