# Created by newuser for 5.4.2
export LANG="en_US.utf8"
alias ls="colorls"
alias pbcopy="xsel --clipboard --input"
alias g++="g++ -Wall"

# Add environment variable COCOS_X_ROOT for cocos2d-x
export COCOS_X_ROOT="/opt"
export PATH=$COCOS_X_ROOT:$PATH

# Add environment variable ANT_ROOT for cocos2d-x
export ANT_ROOT="/usr/bin"
export PATH=$ANT_ROOT:$PATH

alias sublime="/opt/sublime_text_3/sublime_text"

# godoc
export PATH="/usr/lib/go/bin":$PATH
export PATH="$PATH: /usr/lib/go/bin"

#gem
export PATH=$PATH:/home/hsm-hx/.gem/ruby/2.5.0/bin

# rbenv
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"
export GEM_HOME=/var/lib/gems/1.8/
export PATH=$PATH:/var/lib/gems/1.8/bin
export RUBYLIB=$RUBYLIB:/var/lib/gems/1.8/lib

# zplug
source /usr/share/zsh/scripts/zplug/init.zsh

# zplug-definission
zplug 'zsh-users/zsh-autosuggestions'
zplug 'zsh-users/zsh-completions'
zplug 'zsh-users/zsh-syntax-highlighting'
zplug 'bhilburn/powerlevel9k', use:powerlevel9k.zsh-theme
zplug 'b4b4r07/enhancd', use:init.sh

# zplug-install
if ! zplug check --verbose; then
  printf 'Install? [y/N]: '
  if read -q; then
    echo; zplug install
  fi
fi

zplug load --verbose

# powerlevel9k
DISABLE_AUTO_TITLE="true"

POWERLEVEL9K_BATTERY_CHARGING='yellow'
POWERLEVEL9K_BATTERY_CHARGED='green'
POWERLEVEL9K_BATTERY_DISCONNECTED='$DEFAULT_COLOR'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD='10'
POWERLEVEL9K_BATTERY_LOW_COLOR='red'
POWERLEVEL9K_BATTERY_ICON='\uf1e6 '
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='\uf0da'
POWERLEVEL9K_VCS_GIT_ICON='\ue60a'

POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='yellow'
POWERLEVEL9K_VCS_UNTRACKED_ICON='?'


POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status os_icon battery context dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time background_jobs ram virtualenv rbenv rvm)

POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=4

#POWERLEVEL9K_CUSTOM_TIME_FORMAT="%D{\uf017 %H:%M:%S}"
POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %H:%M \uf073 %d.%m.%y}"

POWERLEVEL9K_STATUS_VERBOSE=false

POWERLEVEL9K_PROMPT_ON_NEWLINE=true

