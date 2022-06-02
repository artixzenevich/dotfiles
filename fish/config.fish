if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias r="ranger"
alias v="nvim"
alias sv="sudo nvim"
alias vc="nvim /home/artix/.dotfiles/nvim/init.vim"
alias c="clear"
alias update="sudo apt update"
alias upgrade="sudo apt upgrade"
alias off="poweroff"
alias fc="nvim .config/fish/config.fish"
alias install="sudo apt install -y"
alias gt="gtypist ru.typ"

# start the ssh-agent
if test -z (pgrep ssh-agent)
	eval (ssh-agent -c)
	set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
  	set -Ux SSH_AGENT_PID $SSH_AGENT_PID
end

# set the EDITOR variable to be nvim
export EDITOR="/usr/bin/nvim"
export PATH="$PATH:/home/mjs/.spicetify"
alias config='/usr/bin/git --git-dir=/home/artix/.dotfiles/ --work-tree=/home/artix'
