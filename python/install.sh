#!/bin/sh

if test ! $(which poetry)
then
    echo "  Installing Poetry (Python) for you."

    curl -sSL https://install.python-poetry.org | python3 -
fi  