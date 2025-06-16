#!/usr/bin/env zsh

alias gw=./gradlew
alias vim=nvim
alias ggg='git graph --model ds --format full'
alias gg='git graph --model ds --format short'
alias g='git graph --model ds'

alias ,myip="curl ifconfig.me"
alias ,gitl="git log --graph --oneline"
alias gitll="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset) %C(bold cyan)(committed: %cD)%C(reset) %C(auto)%d%C(reset)%n''          %C(white)%s%C(reset)%n''          %C(dim white)- %an <%ae> %C(reset) %C(dim white)(committer: %cn <%ce>)%C(reset)' --all"
alias ,gitupdate="git remote update origin --prune"

alias ,wttr="curl v2.wttr.in"
alias ls="lsd"
