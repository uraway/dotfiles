eval "$(direnv hook $SHELL)"

export PATH=$PATH:/usr/local/sbin

###
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
###

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

HOME_DIR=$(cd ~/ && pwd)
export PATH="${HOME_DIR}/dotfiles/bin:${PATH}"


export GOPATH=$HOME/dev/go
export PATH=$PATH:$GOPATH/bin
export PATH=/usr/local/bin:$PATH

export PATH="/usr/local/Homebrew/bin:$PATH"
export PATH="/usr/local/Homebrew/sbin:$PATH"

export PATH="$HOME/.yarn/bin:$PATH"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH=$PATH:$HOME/.npm_modules/bin

export NVM_DIR="/Users/uraway/.nvm"

source ~/.profile
PATH=~/.rbenv/shims:"$PATH"

[ -f /Users/uraway/.travis/travis.sh ] && source /Users/uraway/.travis/travis.sh

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
