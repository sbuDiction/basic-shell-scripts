#!/bin/bash


function get_user_pass() {
read -p "Enter a password " pass
    
    if test "$pass" = "codex123"
    then
         echo "Password verified."
        
    else
         echo "Access denied."	
    fi



}

get_user_pass
