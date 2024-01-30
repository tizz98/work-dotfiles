#!/usr/bin/env bash

if ! command -v brew &> /dev/null
then
    echo "Installing brew"
    export NONINTERACTIVE=1
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

brew bundle install --file=Brewfile

echo "Installing dotfiles with chezmoi"
chezmoi init --apply tizz98/work-dotfiles

# If linux, install packages with apt
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Installing packages with apt"
    apt update && apt install -y \
	    build-essential
fi
