#!/bin/sh

SCRIPT_PATH=$(readlink -f $0)
SCRIPT_DIR=$(dirname $SCRIPT_PATH)

#bash
BASH_DIR=$SCRIPT_DIR/bash
ln -is $BASH_DIR/bashrc ~/.bashrc
ln -is $BASH_DIR/bash_profile ~/.bash_profile

#fish
FISH_DIR=$SCRIPT_DIR/fish
mkdir -p ~/.config/fish/functions
ln -is $FISH_DIR/functions/fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish

#nvim
NVIM_DIR=$SCRIPT_DIR/nvim
mkdir -p ~/.config/nvim
ln -is $NVIM_DIR/init.vim ~/.config/nvim/init.vim

#tmux
TMUX_DIR=$SCRIPT_DIR/tmux
mkdir -p ~/.config/tmux
ln -is $TMUX_DIR/tmux.conf ~/.config/tmux/tmux.conf

