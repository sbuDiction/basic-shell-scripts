#!/bin/bash

echo "Listing all files and dir in the $0"

function start_sever() {
    npm run dev
}

function status() {
    if [ $? -eq 0 ]; then
        echo OK
    else
        echo FAIL
    fi
}

# file_name="${sourceFile}"

# github automation status check
function git_status() {
    cd Documents/Projects/Online-Shoe-Catalogue/ && ls
    git status
    if [ $0 = Online-Shoe-Catalogue ]; then
        echo $0
        timeout 10s echo "Starting sever...."
        start_sever
        status
    else 
        echo "Opening java application."
        cd /home/codex/IdeaProjects/BikeRide/ || exit
        git status
        git add .
        git commit -m "Automated commit "
        status
    fi

    # status function invoked.
    
}


# invoke function.
git_status