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
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply tizz98/work-dotfiles
```

## First time setup

```shell
chezmoi init https://github.com/tizz98/work-dotfiles.git
```
