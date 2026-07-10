#!/bin/bash

set -eu

if [[ -x "$(command -v ollama)" ]]; then
    echo "Ollama already installed"
    exit 0
fi

"$HOME/.config/yadm/review-and-run-installer" https://ollama.com/install.sh
