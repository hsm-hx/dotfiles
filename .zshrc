# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# Aliases
alias g++="g++ -Wall"
alias shutdown="shutdown -h now"
alias vim="nvim"

# XDG
export XDG_CONFIG_HOME=~/.config

# Editor
export EDITOR=nvim

# Go
export GOPATH=/usr/local/go
export PATH=$PATH:$GOPATH/bin
export GOMODCACHE=$HOME/go/pkg/mod

# zsh-completions & zsh-autosuggestions (via Homebrew)
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  autoload -Uz compinit && compinit
fi

# zplug
export ZPLUG_HOME=/opt/homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug 'romkatv/powerlevel10k', as:theme, depth:1

if ! zplug check --verbose; then
  printf 'Install? [y/N]: '
  if read -q; then
    echo; zplug install
  fi
fi

zplug load

# Powerlevel10k
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# Local bin
export PATH="$HOME/.local/bin:$PATH"
