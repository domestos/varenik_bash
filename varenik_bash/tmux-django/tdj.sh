#!/bin/bash


#======================
function create_venv () {
    virtualenv --python=python3 venv   
}

function activate_venv () {
   source ./venv/bin/activate
}
#======================

case "$1" in
-c)
    echo "need create a project "$2
    if [ -z "$2" ]; then
        echo "please set the name of  project"
    else
        echo "creat a new django project"
        mkdir $2 && cd $2
        create_venv
        activate_venv
        echo "django" >> requirements.txt   
       # pip3 install -r requirements.txt
       # django-admin startproject app
       # cd app
    fi
;;
    
-r) echo "need run"

;;

*) echo "$1 is not an option";;
esac











