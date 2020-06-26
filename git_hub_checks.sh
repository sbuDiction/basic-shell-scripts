#!/bin/bash

#       .------------------------- constant part!
RED='\033[0;31m'
WH='\033[1;35m'
NC='\033[0m'
YL='\033[1;33m'
BL='\033[0;34m'

read -r -p "Enter commit message: "

function git_check() {
  echo "checking for changes made in this directory"
  git status
}

function git_add() {
  echo "adding all changes to github"
  git add -A
}

function git_commit() {
  echo "committing all changes to github."
  git commit -m "${}"
  git push origin master

}

function main() {
  git_check
  git_add
  git_commit
}

# run script shell.
main
