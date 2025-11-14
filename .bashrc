#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias cd='echo "cd is superceded by z" && cd'

eval "$(zoxide init bash)"
. "$HOME/.cargo/env"
