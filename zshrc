[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source ~/Workspace/zsh-git-prompt/zshrc.sh

PROMPT='%B%m%~%b$(git_super_status) %# '

# aliases
alias ll="ls -lha"
alias workspace="cd ~/Workspace"
alias fara="cd ~/Workspace/Fara"
alias dotfiles="cd ~/Workspace/dotfiles"

# rbenv
eval "$(rbenv init -)"

# pyenv
eval "$(pyenv init -)"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}"  ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh"  ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export https_proxy=http://127.0.0.1:1235;export http_proxy=http://127.0.0.1:1235;export all_proxy=socks5://127.0.0.1:1234

# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
