#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

#####################################################################
# ANACONDA CONFIG
#####################################################################



#####################################################################
# Paths
#####################################################################
export PATH=$PATH:$HOME/.local/bin
export PATH=~/.emacs.d/bin:$PATH

###############################################################
# Alias list
#################################################################

alias li='ls --color=auto -l --group-directories-first'
# Long format list
alias la='ls -ah --color=auto --group-directories-first'
alias cp='cp -iv'
alias config='/usr/bin/git --git-dir=/home/sasank/dotfiles/ --work-tree=/home/sasank'

# Aliases for extending screen to right with HDMI port
alias hdmiright='xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-1 --mode 3840x2160 --pos 1920x0 --rotate normal --output DP-1 --off --output HDMI-2 --off'
alias hdmioff='xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-1 --off --output DP-1 --off --output HDMI-2 --off'


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/sasank/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/sasank/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/sasank/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/sasank/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# Add in the 'br' command for using broot
source /home/sasank/.config/broot/launcher/bash/br
