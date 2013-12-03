#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1 original
#PS1='[\u@\h \W]\$ '
#
# Mon PS1 root
NORMAL="\[\e[0m\]"
MAGENTA="\[\e[1;35m\]"
#PS1="$MAGENTA[\u@\h \W]\$$NORMAL "
if [ `id -u` -ne 0 ]; then
        SYMBOLE="$"
else
        SYMBOLE="#"
fi
PS1="${MAGENTA}[\u@\h \W]\${SYMBOLE}${NORMAL} "
