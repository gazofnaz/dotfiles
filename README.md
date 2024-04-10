# Dotfiles

This repository contains my personal dotfiles, including my LazyVim (built on Neovim) configuration to ensure a quick setup or recovery.

## LazyVim/Nvim Configuration

Stored under `nvim/`, this is my LazyVim configuration, which can be symlinked or copied to `~/.config/nvim` to restore or set up LazyVim on a new system.

## Pre-requisites

`sudo apt-get install pandoc` or `brew install pandoc`

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

## Future enhancements:

- @todo use make to install pre-requisites
- @todo use make to automate restores

