#!/bin/sh
initial () {
    python3 --version
    pip --version
}

create () {
    python3 -m venv myproject
    touch .gitignore
    echo "myproject/" >> .gitignore
}

activate () {
    source myproject/bin/activate
}

initial
create
activate