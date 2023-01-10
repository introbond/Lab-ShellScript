#!/bin/sh

initial () {
    python -m venv env
    source env/bin/activate
}

install () {
    pip install -r requirements.txt
}

initial
install