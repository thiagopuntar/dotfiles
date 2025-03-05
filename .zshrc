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

bwls() {
  if [ -z "$1" ]; then
    echo "Usage: bwls <search-term>"
    return 1
  fi

  local search_term="$1"
  bw list items --search "$search_term" | jq --arg term "$search_term" '.[] | {username: .login.username, password: .login.password, id: .id, name: .name} | select(.name | test($term; "i"))'
}

cdkitty() {
  selected_dir=$(find ~/projects ~/ ~/work ~/tripleten -mindepth 1 -maxdepth 1 -type d | fzf)

# Check if a directory was selected
  if [[ -n "$selected_dir" ]]; then

    cd "$selected_dir" || return 
  else
    # Exit if no directory was selected
    echo "No directory selected. Exiting."
    exit 1
  fi
}



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm use 20

alias rungo="~/.local/scripts/rungo.sh"


export PATH=$PATH:/usr/local/go/bin

export EDITOR='nvim'
export VISUAL='nvim'

# pnpm
export PNPM_HOME="/home/tpuntar/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

