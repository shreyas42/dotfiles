# bash and zsh login shell sources this file, set environment variables here
export TERMINAL="urxvt"
export FILE="ranger"
export EDITOR="vim"
export BROWSER="firefox"
export READER="zathura"

# gtk-3 environment

# adding path to custom scripts
export PATH=$PATH:/home/shreyas/.local/bin

# if logging in on tty1, startx
# also make sure tty1 is not already running
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg > /dev/null && exec startx
