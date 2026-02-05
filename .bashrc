#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

source ~/dotfiles/.sharedrc

eval "$(starship init bash)"
eval "$(zoxide init bash)"
