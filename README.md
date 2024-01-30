# Eli's Work Dotfiles

These are the [dotfiles](https://dotfiles.github.io/) I use for work.
They probably won't work for you, but you can use it as a reference for your own.
I use `chezmoi` for my dotfiles, because I like the name and its CLI.

## Install `chezmoi`

### macOS

```bash
brew install chezmoi
```

### Linux

```shell
sh -c "$(curl -fsLS get.chezmoi.io)"
```

## New machine setup

```bash
./install.sh
```

## First time setup

> This is for future reference, since this is done once.

```shell
chezmoi init https://github.com/tizz98/work-dotfiles.git
```
