export ZSH="$HOME/.oh-my-zsh"

# Handled by Starship
unset ZSH_THEME
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
    colored-man-pages
    docker
    docker-compose
    git
    mise
)

source $ZSH/oh-my-zsh.sh
