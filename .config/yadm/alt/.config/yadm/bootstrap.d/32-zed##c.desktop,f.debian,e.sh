#!/bin/bash

set -eu

if [[ -x "$(command -v zed)" ]]; then
    echo "Zed already installed"
    exit 0
fi

"$HOME/.config/yadm/review-and-run-installer" https://zed.dev/install.sh
