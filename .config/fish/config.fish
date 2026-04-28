source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

alias gba='git branch -a'
alias gbm='git branch -m'
alias gbd='git branch -d'
alias gbD='git branch -D'
alias gcb='git checkout -b'
alias gc='git checkout'
alias ga='git add'
alias gaa='git add .'
alias gcm='git commit -m'
alias gcam='git commit -am'
alias gfp='git fetch -p --all'
alias gl='git log'
alias glg='git log --graph --oneline --decorate'
alias gm='git merge --no-ff'
alias gpd='git push -d origin'
alias gpu='git push -u origin'
alias gst='git status'
alias gcl='git clone'
alias dev='~/dev.sh'
alias config='~/config.sh'
# apps
alias v='nvim'
alias n='nvim'
# docker
alias dpsa='docker ps -a --format "[{{.State}}] {{.Names}} ({{.Image}}) on {{.Ports}}\n"'
# zellij
alias z='zellij'
alias za='zellij attach -c'
alias zaf='zellij attach -c -f'
alias zls='zellij ls'
alias zds='zellij delete-session'
alias zdsf='zellij delete-session --force'
alias zdas='zellij delete-all-sessions'
# shadcn/ui
alias shad='bunx --bun shadcn@latest'

# opencode
fish_add_path /home/tn/.opencode/bin
