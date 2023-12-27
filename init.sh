#!/bin/sh

# Run to generate a fresh workspace
rm -rf ~/.ssh
ln -s /workspace/.ssh ~/

pip install --upgrade pip
pip install poetry
poetry install --no-root
