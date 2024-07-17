#
# ~/.bashrc
#
pokemon-colorscripts -r
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias fastfetch='ff'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
