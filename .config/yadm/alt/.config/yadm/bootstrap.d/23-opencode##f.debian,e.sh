#!/bin/bash

set -eu

if [[ -x "$(command -v opencode)" ]]; then
    echo "OpenCode already installed"
    exit 0
fi

"$HOME/.config/yadm/review-and-run-installer" https://opencode.ai/install bash
