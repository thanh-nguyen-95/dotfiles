#!/usr/bin/env bash

# List all directories
sessions=`tmux list-sessions -F '#{session_name}'`

# Select a directory using FZF
selected=`printf "$sessions" | fzf`

if [ -z "$selected" ]
then
  echo 'No session selected'
  exit 1
fi

tmux attach-session -t "$selected"

