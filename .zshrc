#==== SSH ==============================

# Don't open a GUI to ask for passwords
unset SSH_ASKPASS
unset SSH_ASKPASS_REQUIRE

eval $(keychain --quiet --noask --eval id_ed25519)

#==== Zsh ==============================

HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=1000000

setopt sharehistory

#==== Oh My Zsh ========================

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

#==== Aliases ==========================

unalias l
unalias la
unalias ll
unalias ls
unalias lsa

# alias l="LC_COLLATE=C ls -lahF --color --group-directories-first"
alias l="eza --all --classify --colour --git --group-directories-first --icons --long --smart-group"

alias gs="git status -b -u"
alias t="tail -f"
alias sail="[ -f sail ] && bash sail || bash vendor/bin/sail"

#==== Starship =========================

eval "$(starship init zsh)"
