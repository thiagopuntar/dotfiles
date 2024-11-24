# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
export DEFAULT_USER=$USER

plugins=(git npm zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete)

source $ZSH/oh-my-zsh.sh

export PATH="$HOME/.local/bin/:$PATH"
export PATH="$PATH:/opt/nvim-linux64/bin"

alias vim="nvim"
alias lse="npx live-server"
sudo() {
  if [ "$1" = "vim" ]; then
    shift
    command sudo nvim "$@"
  else
    command sudo "$@"
  fi
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias rungo="~/.local/scripts/rungo.sh"
export PATH=$PATH:/usr/local/go/bin

export EDITOR='nvim'
export VISUAL='nvim'
