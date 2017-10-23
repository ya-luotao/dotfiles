# dotfiles

## Install

```
git clone git@github.com:wall2flower/dotfiles ~/Workspace/dotfiles
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

## Add

```
mkrc ~/.tmuxinator/proj.yml
```

## Configs

1. tmux & tmuxinator

- prefix: `C-g`.
- tmux require tmux 1.8 or later (except 2.5).

2. Karaniner-Elements

- map `C-h/j/k/l` to `left/down/up/right arrow`.
