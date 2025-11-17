#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

alias cd='z'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

eval "$(zoxide init bash)"
. "$HOME/.cargo/env"

# wallpaper select
setwallpaper() {
	echo "$1" > ~/dotfiles/.wallpaper
	swww img $(cat ~/dotfiles/.wallpaper)
}
