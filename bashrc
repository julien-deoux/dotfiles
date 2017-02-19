#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

force_color_prompt=yes
alias ls='ls --color=auto --quoting-style=literal'
alias vi='vim'
alias ll='ls -hl'
alias la='ll -a'
alias pac='sudo pacman -S'
alias pacs="pacman -Ss"
alias pacu="sudo pacman -Syu"
alias pacr="sudo pacman -Rsc"
alias tor="aria2c *.torrent"
alias packer="packer-io"

reset=$(tput sgr0)
black=$(tput setaf 0)
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
magenta=$(tput setaf 5)
cyan=$(tput setaf 6)
gray=$(tput setaf 7)
PS1="\[$green\]\u:\h \[$blue\]\W  \[$reset\]"

bind '\C-J':menu-complete

shopt -s checkwinsize

