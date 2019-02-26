# dotfiles

## Install

```
git clone git@github.com:luotaoruby/dotfiles ~/Workspace/dotfiles
```

Install RCM:

```
brew tap thoughtbot/formulae
brew install rcm
```

rcup:

```

lsrc -d $HOME/Workspace/dotfiles
rcup -v -d $HOME/Workspace/Dotfiles
```

## Create new dotfile link

```
mkrc ~/.tmuxinator/proj.yml
```

### Configs

1. Homebrew

```
rm Brewfile && brew bundle dump # backup homebrew.

brew bundle # restore homebrew backup.
```

2. tmux

3. Vim

4. Karabiner

5. Hammerspoon

6. Git

7. RSpec

8. RubyGems

9. Bash
