#!/bin/sh

# Run to generate a fresh workspace
cp -r ~/.cursor-server /workspace
rm -rf ~/.cursor-server
ln -s /workspace/.cursor-server ~/