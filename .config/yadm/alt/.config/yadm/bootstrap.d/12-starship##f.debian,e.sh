#!/bin/bash

set -eu

if [[ -x "$(command -v starship)" ]]; then
    echo "Starship already installed"
    exit 0
fi

asset="starship-$(uname -m)-unknown-linux-musl.tar.gz"
download_url="https://github.com/starship/starship/releases/latest/download/$asset"
install_path="/usr/local/bin/starship"
tmp_dir=$(mktemp -d)

curl -fsSL "$download_url" -o "$tmp_dir/starship.tar.gz"
tar -xzf "$tmp_dir/starship.tar.gz" -C "$tmp_dir"
sudo install -m 755 "$tmp_dir/starship" "$install_path"
rm -rf "$tmp_dir"
echo "Installed $(starship -V) to $install_path"
