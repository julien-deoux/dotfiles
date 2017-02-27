#!/bin/sh

DOTFILES_DIR=$(pwd)

ln -sf $DOTFILES_DIR/xinitrc ~/.xinitrc
ln -sf $DOTFILES_DIR/bashrc ~/.bashrc
ln -sf $DOTFILES_DIR/xmonad.hs ~/.xmonad/xmonad.hs
ln -sf $DOTFILES_DIR/xmobarrc ~/.xmobarrc
ln -sf $DOTFILES_DIR/termite ~/.config/termite/config
ln -sf $DOTFILES_DIR/vimrc ~/.vimrc
ln -sf $DOTFILES_DIR/vim ~/.vim

