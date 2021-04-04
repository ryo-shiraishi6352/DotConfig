#!/bin/sh

SCRIPT_PATH=$(readlink -f $0)
SCRIPT_DIR=$(dirname $SCRIPT_PATH)

#bash
BASH_DIR=$SCRIPT_DIR/bash
ln -s $BASH_DIR/bashrc ~/.bashrc

