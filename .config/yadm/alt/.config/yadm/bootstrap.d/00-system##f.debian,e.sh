#!/bin/bash

set -e

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y \
    bat \
    ca-certificates \
    clamav \
    curl \
    duf \
    extrepo \
    eza \
    gdu \
    git \
    gnupg \
    input-remapper \
    tar

# Update ClamAV virus definitions and start the service that keeps them updated
sudo systemctl stop clamav-freshclam
sudo freshclam
sudo systemctl enable --now clamav-freshclam

# Sometimes bat is installed as batcat, so we need to create a symlink
# https://github.com/sharkdp/bat#on-ubuntu-using-apt
if [[ ! -x "$(command -v bat)" ]]; then
    bat_path="$(command -v batcat)"
    link_path="/usr/local/bin/bat"

    if [[ -x "$bat_path" ]] && [[ ! -e "$link_path" ]] && [[ ! -L "$link_path" ]]; then
        sudo ln -s "$bat_path" "$link_path"
    fi
fi
