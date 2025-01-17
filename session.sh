#!/usr/bin/env bash

# List all directories
sessions=`zellij ls -n | awk '{print $1}'`

# Select a directory using FZF
selected=`printf "$sessions" | fzf`

if [ -z "$selected" ]
then
  echo 'No session selected'
  exit 1
fi

zellij a "$selected"
