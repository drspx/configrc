#!/usr/bin/env zsh

,brew-upgrade-all(){
brew update
brew upgrade --greedy
brew cleanup
}

eval $(/opt/homebrew/bin/brew shellenv)
