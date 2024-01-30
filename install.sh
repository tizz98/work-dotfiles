#!/usr/bin/env bash

echo "Installing dotfiles with chezmoi"
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply tizz98/work-dotfiles

if ! command -v fzf &> /dev/null
then
    echo "Installing fzf"
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
fi

if ! command -v starship &> /dev/null
then
    echo "Installing starship terminal"
    sh -c "$(curl -fsLS https://starship.rs/install.sh)" -- --yes
fi

# If linux, install packages with apt
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Installing packages with apt"
    sudo apt install -y \
        curl \
        wget \
        git \
        htop \
        jq \
        ripgrep
fi
