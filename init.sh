#!/bin/sh

# cd to the directory of the script
(cd "$(dirname "$0")" || exit; pwd -P)

# Run to generate a fresh workspace
# rm -rf ~/.ssh
# ln -s /workspace/.ssh ~/

pip install --upgrade pip
pip install poetry
poetry install --no-root
