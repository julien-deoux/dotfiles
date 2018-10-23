# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=2000
bindkey -v
bindkey '^R' history-incremental-search-backward
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/julien/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Aliases
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias pac='sudo pacman -S'
alias pacy='sudo pacman -Sy'
alias pacu='sudo pacman -Syu'
alias pacs='pacman -Ss'
alias pacr='sudo pacman -Rsc'
alias paci='pacman -Qi'
alias zyp='sudo zypper install'
alias zypu='sudo zypper update'
alias zyps='zypper search'
alias zypr='sudo zypper remove'
alias g='git'

# Theming
autoload -Uz promptinit
promptinit
PROMPT='%F{blue}%B%n%f%b@%F{red}%m%f  '
RPROMPT='%F{yellow}%~%f'

