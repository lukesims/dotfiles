#!/bin/bash

set -eu

install_dir="$HOME/.shell/oh-my-zsh"

if [[ -d $install_dir ]]; then
    echo "Oh My Zsh is already installed to $install_dir"
    exit 0
fi

git clone --depth=1 https://github.com/ohmyzsh/ohmyzsh.git "$install_dir"

echo "Installed Oh My Zsh to $install_dir"
