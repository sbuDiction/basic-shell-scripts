#!/bin/bash

# ascii colors
RED='\033[1;35m'
NC='\033[0m'
YL='\033[1;33m'

function start() {
#  npm script for starting the sever
    npm run dev
} 

function main() {
    echo -e "${RED}Locating project folder..${NC}"
    printf "\n"
    cd /home/codex/Documents/Projects/Online-Shoe-Catalogue/ && ls
    printf "\n"
    echo -e "${YL}Starting sever please wait......${NC}"
    start
}

main