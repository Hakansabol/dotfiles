#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

alias z='cd'
alias ls='ls --color=auto'
alias grep='grep --color=auto'

eval "$(zoxide init bash)"
. "$HOME/.cargo/env"
