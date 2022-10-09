#!/usr/bin/env bash

# List all directories
projects=`ls -d ~/projects/*`
researches=`ls -d ~/reseaches/*`

# Select a directory using FZF
selected=`printf "$projects\n$researches" | fzf`

if [ -z "$selected" ]
then
  exit 1
fi

# Default 'cd' to selected directory
cd $selected

# Ask for extra command. Ex: nvim
read -p "Extra command: " cmd


# Execute extra command with selected directory
if [ -z $cmd ]
  then
    exit 1
else
  $cmd $selected
fi
