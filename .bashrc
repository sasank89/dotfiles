#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/sasank/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/sasank/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/sasank/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/sasank/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export ANACONDA=/home/sasank/anaconda3/bin/
export PATH=$PATH:$ANACONDA
export PATH=$PATH:$HOME/.local/bin
export PATH=~/.emacs.d/bin:$PATH

###############################################################
# Alias list
#################################################################

alias ls='ls --color=auto'
# Long format list
alias la='ls -lah'
alias cp='cp -iv'
alias config='/usr/bin/git --git-dir=/home/sasank/dotfiles/ --work-tree=/home/sasank'
