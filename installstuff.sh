#!/bin/bash

#Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
cat .bash_profile | sed "s/mikeestrada/"$(whoami)"/g" > ~/.bash_profile  # Places this in the path with the user of the mac
cat .zshrc | sed "s/mikeestrada/"$(whoami)"/g" > ~/.zshrc # Same as ^
#Install zsh
brew install zsh zsh-completions

#Oh-My-ZSH
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
brew install cloudfoundry/tap/cf-cli
brew install jq
brew install node
brew install golang
brew install neovim

#Gcloud install
# Assumes SDK was downloaded and decompressed to the bloe location
~/google-cloud-sdk/install.sh

#Best iTerm theme ever
sudo cp com.googlecode.iterm2.plist /Library/Preferences
curl http://prodigy-cicd.apps-np.homedepot.com/api/v1/cli\?arch\=amd64\&platform\=darwin -o fly && sudo mv fly /usr/local/bin && sudo chmod +x /usr/local/bin/fly
