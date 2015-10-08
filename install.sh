#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ln -siv "$DOTFILES_DIR/git/.gitconfig" ~
ln -siv "$DOTFILES_DIR/git/.gitignore_global" ~
ln -siv "$DOTFILES_DIR/vim/.vimrc" ~
ln -siv "$DOTFILES_DIR/vim/bundle" ~/.vim/bundle
ln -siv "$DOTFILES_DIR/pylint/.pylintrc" ~
ln -siv "$DOTFILES_DIR/zsh/.zshrc" ~
