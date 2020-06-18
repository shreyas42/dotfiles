#
# ~/.zprofile
#

# first source .profile for setting environment variables
[[ -f $HOME/.profile ]] && source $HOME/.profile

# source zshrc on all other ttys
[[ -f $HOME/.zshrc ]] && source $HOME/.zshrc
