#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

source ~/dotfiles/.sharedrc

eval "$(zoxide init bash)"
eval "$(starship init bash)"
