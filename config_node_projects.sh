#!/bin/bash

# For creating node projects

#       .------------------------- constant part!
RED='\033[0;31m'
WH='\033[1;35m'
NC='\033[0m'
YL='\033[1;33m'
BL='\033[0;34m'

function make_dir() {
  echo "Creating folder please wait"
  mkdir "dirname"
}

function make_file() {
  echo "Creating file named ${}"
}

function main() {

    make_dir
    make_file
}