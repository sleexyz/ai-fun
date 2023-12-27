#!/bin/sh

set -e

# Run to generate a fresh workspace
if [ -d "/workspace/.ssh" ]; then
    echo ".ssh already exists"
    exit 1
else
    cp -r ~/.ssh /workspace
    rm -rf ~/.ssh
    ln -s /workspace/.ssh ~/
fi