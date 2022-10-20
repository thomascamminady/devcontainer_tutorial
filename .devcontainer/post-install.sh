#!/bin/bash
set -ex

# Common alias
echo 'alias ltr="ls -ltr"' >> $HOME/.bashrc

# Convenience workspace directory for later use
WORKSPACE_DIR=$(pwd)

# Change some Poetry settings to better deal with working in a container
poetry config cache-dir ${WORKSPACE_DIR}/.cache
poetry config virtualenvs.in-project true

poetry install
clear
poetry shell
