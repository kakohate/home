set -o emacs

if [ -f ~/.zplug/init.zsh ]; then
    source ~/.zplug/init.zsh
    zplug 'themes/garyblessington', from:oh-my-zsh, as:theme
    zplug 'b4b4r07/enhancd', use:init.sh
    zplug 'zsh-users/zsh-syntax-highlighting', defer:2
    zplug 'zsh-users/zsh-completions'
    zplug "plugins/colored-man-pages", from:oh-my-zsh
    if ! zplug check --verbose; then
        zplug install
    fi
    zplug load
fi

export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin:$HOME/.local/bin
export WORDCHARS="*?_-.[]~=&;!#$%^(){}<>"

alias ls='ls --group-directories-first --color -G -F'
