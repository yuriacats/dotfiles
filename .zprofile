autoload -U compinit
compinit

# Setting PATH for Python 3.6
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"

export PATH="$HOME/.pyenv/shims:$PATH"

export GOENV_ROOT=$HOME/.goenv
export PATH=$GOENV_ROOT/bin:$PATH
eval "$(goenv init -)"
export PATH=$PATH:$GOPATH/bin
export TMUX_TMPDIR=/tmp
alias chrm="open -a Google\ Chrome --args -allow-file-access-from-files "
export NVM_DIR="${XDG_CONFIG_HOME/:-$HOME/.}nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
