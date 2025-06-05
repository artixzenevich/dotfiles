#set -x PATH $HOME/.config/composer/vendor/bin $PATH

load_nvm >/dev/stderr
if status is-interactive
    set -g fish_greeting
    alias ll 'lsd -la'
    alias ls 'lsd -l'
    alias ginit 'git init'
    alias gadd 'git add .'
    alias gcommit 'git commit -m'
    alias v nvim
    alias b batcat
end

export PATH="/home/artix/.lando/bin:$PATH"
#landopath
