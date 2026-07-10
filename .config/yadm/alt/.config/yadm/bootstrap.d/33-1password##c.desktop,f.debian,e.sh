#!/bin/bash

set -e

if [[ -x "$(command -v 1password)" ]]; then
    echo "1Password already installed"
    exit 0
fi

arch="$(uname -m)"

case "$arch" in
    x86_64 | amd64)  arch="amd64" ;;
    aarch64 | arm64) arch="arm64" ;;
    *) echo "Unsupported architecture: $arch"; exit 1 ;;
esac

download_url="https://downloads.1password.com/linux/debian/${arch}/stable/1password-latest.deb"
temp_file=$(mktemp --suffix=.deb)

trap 'rm -f "$temp_file"' EXIT
curl -fsSL "$download_url" -o "$temp_file"
sudo apt-get install -y "$temp_file"
echo "Installed 1Password"
