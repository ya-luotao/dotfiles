if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi
# Don't forget install bash-git-prompt via brew

export CLICOLOR=1

export EDITOR=vim
export PROXYCHAINS_QUIET_MODE=1
export ANSIBLE_HOSTS=/Users/luotao/ansible_hosts
export PATH=$PATH:/Users/luotao/terraform

# GIT_PROMTP_THEMT=Solarized

if [ -f ~/.aliases ]; then
  source ~/.aliases
fi

if [ -f ~/.bin/tmuxinator.bash ]; then
  source ~/.bin/tmuxinator.bash
fi

# source ~/Workspace/bash-wakatime/bash-wakatime.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/luotao/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/luotao/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/luotao/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/luotao/Downloads/google-cloud-sdk/completion.bash.inc'; fi

export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

eval "$(rbenv init -)"
