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

export GOPATH=$HOME/go
export PATH=$HOME/.local/bin:$GOPATH/bin:$HOME/ghq/github.com/flutter/flutter/bin:$HOME/.yarn/bin:$HOME/.gem/ruby/2.7.0/bin:$PATH
export WORDCHARS="*?_-.[]~=&;!#$%^(){}<>"
export ANDROID_HOME=$HOME/Android/Sdk

alias ls='ls --group-directories-first --color -G -F'
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
