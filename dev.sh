#!/usr/bin/env bash

# List all directories
projects=`ls -d ~/projects/*`
researches=`ls -d ~/researches/*`

# Select a directory using FZF
selected=`printf "$projects\n$researches" | fzf`

if [ -z "$selected" ]
then
  echo 'No project selected'
  exit 1
fi

cd "$selected"
$SHELL
