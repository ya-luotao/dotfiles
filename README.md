# dotfiles

## Install

```
git clone git@github.com:luotaoruby/dotfiles ~/Workspace/dotfiles
```

Install rcm:

```
brew tap thoughtbot/formulae
brew install rcm
```

Install the dotfiles:

```
env RCRC=$HOME/Workspace/dotfiles/rcrc rcup
```

## Update

```
rcup
```

## Create new dotfile link

```
mkrc ~/.tmuxinator/proj.yml
```

## What's in it?

tmux configuration:

- Set prefix to `Ctrl+g`.

vim configuration:

- Use vim-plug to manage plugins.
- Set `<leader>` to `,`.

Shell aliases and scripts:

- `ll` for `ls -lha`.
- `mux` for `tmux`.
- `path` for `echo $PATH | tr -s ":" "\n"`.
- `gitlog` for `git log --format="%Cgreen%h%Creset %C(yellow)%aN%Creset: %s" --no-merges`.
- `fuckgfw` for `proxychains4`.
- `dotfiles` for `cd ~/Workspace/dotfiles`.
- `workspace` for `cd ~/Workspace`.
