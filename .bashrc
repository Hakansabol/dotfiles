#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

alias cd='z'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

eval "$(starship init bash)"
eval "$(zoxide init bash)"

# wallpaper select
setwallpaper() {
	echo "$1" > ~/dotfiles/.wallpaper
	swww img $(cat ~/dotfiles/.wallpaper)
}

# github clone
gits() {
	git status
}

convert_to_dvr() {
	ffmpeg -i $1 -c:v dnxhd -profile:v dnxhr_hq -pix_fmt yuv422p -c:a alac $2
}

dvr() {
	/opt/resolve/bin/resolve
}
