#!/usr/bin/env bash

if ! command -v brew &> /dev/null
then
    echo "Installing brew"
    export NONINTERACTIVE=1
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

if ! command -v chezmoi &> /dev/null
then
    echo "Installing chezmoi"
    brew install chezmoi
fi

echo "Installing dotfiles with chezmoi"
chezmoi init --apply tizz98/work-dotfiles

if ! command -v fzf &> /dev/null
then
    echo "Installing fzf"
    brew install fzf
    $(brew --prefix)/opt/fzf/install
fi

if ! command -v starship &> /dev/null
then
    echo "Installing starship terminal"
    brew install starship
fi

# If linux, install packages with apt
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Installing packages with apt"
    apt update && apt install -y \
	build-essential \
        curl \
        wget \
        git \
        htop \
        jq \
        ripgrep \
        vim
fi
