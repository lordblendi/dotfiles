# PS1-like thingy
function fish_prompt
	test $SSH_TTY; and printf (set_color red)(whoami)(set_color
white)'@'(set_color yellow)(hostname)' '

    test $USER = 'root'; and echo (set_color red)"#"

    # Main
	echo -n (set_color cyan)\[(set_color yellow)nora: (set_color red)(prompt_pwd)(set_color cyan)\]\$' '
end


alias cd..='cd ..'
alias b='bash '
alias lsal='ls -alh'

# git
alias g='git'
alias gs='git status'
alias ga='git add'
alias ga.='git add .'
alias gcm='git commit'
alias gd='git diff'
alias gpl='git pull'
alias gps='git push'
alias grb='git rebase'
alias gch='git checkout'

# ember
alias e='ember'
alias eg='ember generate'
alias es='ember serve'
alias ed='ember destroy'

# dockers
alias dr docker
alias drc docker-compose
