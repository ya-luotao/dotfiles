[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source /Users/taoluo/Workspace/zsh-git-prompt/zshrc.sh

PROMPT='%B%m%~%b$(git_super_status) %# '

# aliases
alias ll="ls -lha"
alias workspace="cd ~/Workspace"
alias fara="cd ~/Workspace/Fara"
alias dotfiles="cd ~/Workspace/dotfiles"

# rbenv
eval "$(rbenv init -)"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}"  ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh"  ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export https_proxy=http://127.0.0.1:1235;export http_proxy=http://127.0.0.1:1235;export all_proxy=socks5://127.0.0.1:1234
