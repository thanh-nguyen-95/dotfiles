#!/usr/bin/env bash

# List all directories
projects=`ls -d ~/projects/*`
researches=`ls -d ~/reseaches/*`

# Select a directory using FZF
selected=`printf "$projects\n$researches" | fzf`

if [ -z "$selected" ]
then
  echo 'No project selected'
  exit 1
fi

# Ask for extra command. Ex: nvim
options=`echo "goto;open in neovim;start dev server" | tr ';' '\n'`
commands=`printf "$options" | fzf`

# Execute extra command with selected directory
case "$commands" in
  "goto")
    cd "$selected"
    # Required for cd command to work
    $SHELL    
    ;;

  "open in neovim")
    cd "$selected"
    nvim "$selected"
    ;;

  "start dev server")
    cd "$selected"
    npm run dev
    ;;

  *)
    echo "default"
    ;;
esac
