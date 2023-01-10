#!/bin/sh
initial () {
    python -m venv env
    source env/bin/activate
}

install () {
    pip install -r requirements.txt
}

gitignore () {
    touch .gitignore
    echo "env/" >> .gitignore
}

if [ -e env/ ]
    then
        echo "===== venv already exist ====="
    else
        echo "===== start create venv ====="
        initial
        install
fi

if [ -e .gitignore ]
    then
        echo "===== .gitignore already exist ====="
    else
        echo "===== start create .gitignore ====="
        gitignore
fi