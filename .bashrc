#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ "$(whoami)" = "root" ]] && return

[[ -z "$FUNCNEST" ]] && export FUNCNEST=100          # limits recursive functions, see 'man bash'

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion


## Use the up and down arrow keys for finding a command in history
## (you can write some initial letters of the command first).
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# Import alias from .bash_aliases file
if  [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# FZF config to ignore files/folders
# export FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*,.next/*,.docusaurus/*}"'

# fnm
export PATH="/home/tn/.local/share/fnm:$PATH"
eval "`fnm env`"

# Deno
export DENO_INSTALL="/home/tn/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# Default editor config
export VISUAL=nvim;
export EDITOR=nvim;

# Starship
eval "$(starship init bash)"

# Pywal
(cat /home/tn/.cache/wal/sequences &)
