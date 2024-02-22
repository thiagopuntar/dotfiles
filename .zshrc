# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
export DEFAULT_USER=$USER

plugins=(git npm zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete)

source $ZSH/oh-my-zsh.sh

export PATH="$HOME/.local/bin/:$PATH"
# export KUBECONFIG=~/.kube/dev.config:~/.kube/stg.config:~/.kube/prod.config

alias vim="nvim"

alias rungo="~/.local/scripts/rungo.sh"
