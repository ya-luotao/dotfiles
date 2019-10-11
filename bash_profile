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
export PATH=$PATH:/Users/luotao/bin

# GIT_PROMTP_THEMT=Solarized

if [ -f ~/.aliases ]; then
  source ~/.aliases
fi

if [ -f ~/.bin/tmuxinator.bash ]; then
  source ~/.bin/tmuxinator.bash
fi

export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH=/Users/luotao/.local/bin:/usr/local/bin:/usr/local/sbin:${PATH}

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

eval "$(rbenv init -)"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

export https_proxy=http://127.0.0.1:6152;export http_proxy=http://127.0.0.1:6152;export all_proxy=socks5://127.0.0.1:6153
