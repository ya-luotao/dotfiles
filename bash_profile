if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi
# Don't forget install bash-git-prompt via brew

export CLICOLOR=1

export EDITOR=vim
export PROXYCHAINS_QUIET_MODE=1

GIT_PROMTP_THEMT=Solarized

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

if [ -f ~/.aliases ]; then
  source ~/.aliases
fi

if [ -f ~/.bin/tmuxinator.bash ]; then
  source ~/.bin/tmuxinator.bash
fi

export NVM_DIR="/Users/luotao/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
