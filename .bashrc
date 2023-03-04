#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '


if [ "$(tty)" == "/dev/tty1" ]; then
	nm-applet &

	export WLR_NO_HARDWARE_CURSORS=1
	exec sway --unsupported-gpu
fi

export GPG_TTY=$(tty)
