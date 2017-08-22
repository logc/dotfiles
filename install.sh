#!/usr/bin/env bash

# Get current dir (so run this script from anywhere)

export DOTFILES_DIR
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# # Install pure prompt
# if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
#     echo "Prezto is installed; use its `prompt` function"
# else
#     git clone git@github.com:sindresorhus/pure.git ~/pure
#     cd ~/pure
#     ln -s "$PWD/pure.zsh" /usr/local/share/zsh/site-functions/prompt_pure_setup
#     ln -s "$PWD/async.zsh" /usr/local/share/zsh/site-functions/async
#     cd -
# fi
# 
# # Install pathogen
# if [[ -a ~/.vim/autoload/pathogen.vim ]]; then
#     echo "Pathogen already installed; skipping"
# else
#     mkdir -p ~/.vim/autoload && \
#     curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
# fi
# 
# # Init submodules
# git submodule init && git submodule update
# 
# # Symlink dotfiles
# ln -siv "$DOTFILES_DIR/git/.gitconfig" ~
# ln -siv "$DOTFILES_DIR/git/.gitignore_global" ~
# ln -siv "$DOTFILES_DIR/vim/.vimrc" ~
# ln -siv "$DOTFILES_DIR/vim/bundle" ~/.vim/bundle
# ln -siv "$DOTFILES_DIR/pylint/.pylintrc" ~
# ln -siv "$DOTFILES_DIR/zsh/.zshrc" ~
ln -siv "$DOTFILES_DIR/spacemacs/.spacemacs" ~
ln -siv "$DOTFILES_DIR/fishshell/config.fish" ~/.config/fish/
