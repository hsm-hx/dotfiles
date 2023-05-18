# Created by newuser for 5.4.2
alias ls="colorls"
alias pbcopy="xsel --clipboard --input"
alias g++="g++ -Wall"
alias shutdown="shutdown -h now"
alias vim="nvim"
alias app-rspec="docker-compose run --rm -e RAILS_ENV=test -e RAILS_LOG_LEVEL=info app bundle exec rspec"
alias admin-spec="docker-compose run --rm -e RAILS_ENV=test -e RAILS_LOG_LEVEL=info admin-app bundle exec rspec"

export XDG_CONFIG_HOME=~/.config

# go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# rbenv
export PATH=$HOME/.rbenv/bin:$PATH
eval "$(rbenv init -)"

# direnv
export EDITOR=nvim
eval "$(direnv hook zsh)"

# zplug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

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
POWERLEVEL9K_MODE='nerdfont-complete'
DISABLE_AUTO_TITLE="true"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(status dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time time battery)

POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='magenta'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='white'
POWERLEVEL9K_DIR_HOME_BACKGROUND='magenta'
POWERLEVEL9K_DIR_HOME_FOREGROUND='white'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='magenta'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='white'

POWERLEVEL9K_BATTERY_CHARGED='green'
POWERLEVEL9K_BATTERY_LOW_FOREGROUND='black'
POWERLEVEL9K_BATTERY_CHARGED_FOREGROUND='black'
POWERLEVEL9K_BATTERY_CHARGING_FOREGROUND='black'
POWERLEVEL9K_BATTERY_LOW_BACKGROUND='217'
POWERLEVEL9K_BATTERY_CHARGED_BACKGROUND='217'
POWERLEVEL9K_BATTERY_CHARGING_BACKGROUND='217'
POWERLEVEL9K_BATTERY_DISCONNECTED='$DEFAULT_COLOR'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD='10'
POWERLEVEL9K_BATTERY_LOW_COLOR='red'
POWERLEVEL9K_BATTERY_ICON='\uf1e6 '

POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='magenta'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='white'

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='(•̀ᴗ•́ ) \uF460\uF460\uF460  '
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR="\uE0B4"
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR="\uE0B6"
POWERLEVEL9K_VCS_GIT_ICON='\ue60a'

POWERLEVEL9K_VCS_CLEAN_BACKGROUND='217'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='217'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='217'
POWERLEVEL9K_VCS_UNTRACKED_ICON='?'

POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=4

POWERLEVEL9K_TIME_FORMAT="%D{\uf017 %H:%M \uf073 %y.%m.%d}"

POWERLEVEL9K_STATUS_VERBOSE=false

POWERLEVEL9K_PROMPT_ON_NEWLINE=true

export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/node@14/bin:$PATH"
export PATH="/usr/local/opt/elasticsearch@6/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
