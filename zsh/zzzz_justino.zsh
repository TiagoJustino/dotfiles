export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.local/bin
export SHELL=/usr/bin/zsh
if [[ ! -e $HOME/bin ]]; then ln -s $HOME/.yadr/justinobin $HOME/bin; fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

export PATH="/home/justino/.ebcli-virtual-env/executables:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ "$TMUX" = "" ]; then tmux; fi

echo ""
cal -wy --color=always | sed "s/^/  /"
echo ""
$HOME/bin/datetimerows | sed "s/^/  /"
echo ""

alias xclip='xclip -sel c'
