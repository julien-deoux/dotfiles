#!/bin/sh

DOTFILES_DIR=$(PWD)

ln -s $DOTFILES_DIR/xinitrc ~/.xinitrc
ln -s $DOTFILES_DIR/bashrc ~/.bashrc
ln -s $DOTFILES_DIR/xmonad.hs ~/.xmonad/xmonad.hs
ln -s $DOTFILES_DIR/xmobarrx ~/.xmobarrc
ln -s $DOTFILES_DIR/termite ~/.config/termite/config
ln -s $DOTFILES_DIR/gitconfig ~/.gitconfig
ln -s $DOTFILES_DIR/vimrc ~/.vimrc
ln -s $DOTFILES_DIR/vim ~/.vim

