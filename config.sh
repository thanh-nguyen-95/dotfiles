#!/usr/bin/env bash

# List all directories in .confg
configs=`ls -d ~/.config/*`

# Select a directory using FZF
selected=`printf "$configs" | fzf`

if [ -z "$selected" ]
then
  echo 'No app selected'
  exit 1
fi

cd "$selected"
$SHELL
