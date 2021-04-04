#!/bin/sh

SCRIPT_PATH=$(readlink -f $0)
SCRIPT_DIR=$(dirname $SCRIPT_PATH)

#bash
BASH_DIR=$SCRIPT_DIR/bash
ln -fs $BASH_DIR/bashrc ~/.bashrc

#fish
FISH_DIR=$SCRIPT_DIR/fish
mkdir -p ~/.config/fish/functions
ln -fs $FISH_DIR/functions/fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish

#nvim
NVIM_DIR=$SCRIPT_DIR/nvim
mkdir -p ~/.config/nvim
ln -fs $NVIM_DIR/init.vim ~/.config/nvim/init.vim

