# Dotfiles

This repository contains my personal dotfiles, including my LazyVim (built on Neovim) configuration to ensure a quick setup or recovery.

## LazyVim/Nvim Configuration

Stored under `nvim/`, this is my LazyVim configuration, which can be symlinked or copied to `~/.config/nvim` to restore or set up LazyVim on a new system.

## Pre-requisites

- Install nvim

- Install broot, fd, ripgrep

- Install [lazyvim](http://www.lazyvim.org/installation)

- Install tmux

- [Install tmux plugin manager](https://github.com/tmux-plugins/tpm)
    - `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
    - `tmux source ~/.tmux.conf`
    - `prefix + I`

- `sudo apt-get install pandoc` or `brew install pandoc` (to be reviewed)

- Download and install `FiraMono Nerd Font` from [nerdfonts](https://www.nerdfonts.com/font-downloads)

## Setup

To restore the LazyVim configuration, you can run:

```bash
rm -rf ~/.config/nvim
ln -s ~/Repositories/dotfiles/nvim ~/.config/nvim
```

To restore alacritty configuration, you can run:

```bash
rm ~/.alacritty.toml
ln -s ~/Repositories/dotfiles/alacritty/.alacritty.toml ~/
```

To restore tmux configuration, you can run:

```bash
rm ~/.tmux.conf
ln -s ~/Repositories/dotfiles/tmux/.tmux.conf ~/
```

## Future enhancements:

- @todo use make to install pre-requisites
- @todo use make to automate restores

