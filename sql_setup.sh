#!/bin/bash

# colors
RED='\033[0;31m'
WH='\033[1;35m'
NC='\033[0m'
YL='\033[1;33m'
BL='\033[0;34m'

# Database setup
echo -e "${1}Creating dataBase please wait...."

read -r -p "Enter database name: " db_name

if [[ "$db_name" =~ ^[a-z] ]]; then
  printf "\n"

  echo -e "${YL}Your database name is ${BL}${db_name}"
  echo -e "${NC}Please wait while........${YL}"
  printf "\n"

  sudo -u postgres createdb "$db_name"

else

  echo -e "${RED}Please use letters only!"
  exit 1

fi