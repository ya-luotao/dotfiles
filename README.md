# dotfiles

## Install

```
git clone git@github.com:ya-luotao/dotfiles ~/Workspace/dotfiles
```

Install rcm:

```
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
- Improve color resolution.

vim configuration:

- Use vim-plug to manage plugins.
- Use Ag instead of Grep when available.
- Use Tagbar to view the tags of the current file and get an overview of its structure, map `<leader>tag` to `:TagbarToggle`.
- Set `<leader>` to `,`.
- Switch between the last two files with `<leader><leader>`.

Shell aliases and scripts:

- `ll` for `ls -lha`.
- `mux` for `tmux`.
- `path` for `echo $PATH | tr -s ":" "\n"` to pretty print the path.
- `gitlog` for `git log --format="%Cgreen%h%Creset %C(yellow)%aN%Creset: %s" --no-merges` to pretty print the git log.
- `dotfiles` for `cd ~/Workspace/dotfiles`.
- `workspace` for `cd ~/Workspace`.
