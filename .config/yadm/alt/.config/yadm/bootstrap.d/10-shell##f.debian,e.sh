#!/bin/bash

set -eu

sudo apt-get install -y zsh

if [[ $(basename -- "$SHELL") == "zsh" ]]; then
    echo "Shell is already zsh"
else
    zsh_path="$(which zsh)"
    chsh -s "$zsh_path"
    echo "Changed shell to $zsh_path"
fi
