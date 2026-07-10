#!/bin/bash

set -e

if [[ -x "$(command -v mise)" ]]; then
    echo "Mise already installed"
    exit 0
fi

sudo apt-get install -y extrepo
sudo extrepo enable mise
sudo apt-get update
sudo apt-get install -y mise
