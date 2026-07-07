#==== OPTIONS ==============================================
# https://zsh.sourceforge.io/Doc/Release/Options.html

# Save each command’s beginning timestamp and duration to the history file.
setopt EXTENDED_HISTORY

# If trimming history to add the current command, this option causes the oldest
# event with a duplicate to be lost before losing a unique event from the list.
setopt HIST_EXPIRE_DUPS_FIRST

# Allow multiple sessions to share the same command history instantly.
setopt SHARE_HISTORY

#==== PARAMETERS ===========================================
# https://zsh.sourceforge.io/Doc/Release/Parameters.html

# The file to save the history in.
HISTFILE=~/.zsh_history

# The maximum number of history events to save in the history file.
SAVEHIST=100000

# The maximum number of events stored in the internal history list.
# Must be greater than SAVEHIST to enable HIST_EXPIRE_DUPS_FIRST.
HISTSIZE=$((SAVEHIST + 1000))
