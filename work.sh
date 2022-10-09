#!/usr/bin/env bash
projects=`ls -d ~/projects/*`
researches=`ls -d ~/reseaches/*`

selected=`printf "$projects\n$researches" | fzf`

echo $selected

cd $selected
nvim $selected
