# basic
alias cd..='cd ..'
alias b='bash '
alias lsal='ls -alh'
alias l='ls -alh'
alias t='tmux'
alias a='atom'
alias n='nano'
alias c='cat'
alias le='less'
alias ti='tig'
alias co='code'

# git
alias g='git'
alias gs='git status'
alias ga='git add'
alias ga.='git add .'
alias gcm='git commit'
alias gcma='git commit -a'
alias gd='git diff'
alias gf='git fetch'
alias gpl='git pull'
alias gpl-o='git pull origin'
alias gps='git push'
alias gps-o='git push origin'
alias gc='git checkout'
alias gr='git rebase'
alias gk='gitk --all'

# git stash
alias gst='git stash'
alias gsta='git stash apply'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'

# ember
alias e='ember'
alias eg='ember generate'
alias es='ember serve'
alias ed='ember destroy'
alias ei='ember install'
alias eb='ember build'
alias ebp='ember build --prod'

# dockers
alias dr='docker'
alias drc='docker-compose'
alias dr-rmi-none='dr rmi -f (dr images | grep "^<none>" | awk \'{print $3}\')'
alias dr-rm-volumes-dangling='eval \'docker volume rm (docker volume ls -f dangling=true -q)\' '

alias dr-rm-dangling-images='eval \'docker rmi (docker images -q -f dangling=true)\' '
alias dr-rm-exited-images='eval \'docker rm (docker ps -qa --filter "status=exited")\' '
alias dr-rm-created-images='eval \'docker rm (docker ps -qa --filter "status=created")\' '

alias dr-clean='dr-rmi-none; dr-rm-exited-images; dr-rm-created-images; dr-rm-dangling-images; dr-rm-volumes-dangling'

alias drc-rebuild-restart-container='drc kill $argv; drc rm -f $argv; drc build $argv; drc up -d $argv'
alias drc-restart-container='drc kill $argv; drc rm -f $argv; drc up -d $argv'
alias dr-stat='docker stats (docker ps --format="{{.Names}}")'

