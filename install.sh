#!/bin/sh

SCRIPT_PATH=$(readlink -f $0)
SCRIPT_DIR=$(dirname $SCRIPT_PATH)

#bash
BASH_DIR=$SCRIPT_DIR/bash
ln -s $BASH_DIR/bashrc ~/.bashrc

#fish
FISH_DIR=$SCRIPT_DIR/fish
mkdir -p ~/.config/fish/functions
ln -s $FISH_DIR/functions/fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish

