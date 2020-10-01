#
#     ___           ___           ___           ___           ___
#     /  /\         /  /\         /__/\         /  /\         /  /\
#    /  /::|       /  /:/_        \  \:\       /  /::\       /  /:/
#   /  /:/:|      /  /:/ /\        \__\:\     /  /:/\:\     /  /:/
#  /  /:/|:|__   /  /:/ /::\   ___ /  /::\   /  /:/~/:/    /  /:/  ___
# /__/:/ |:| /\ /__/:/ /:/\:\ /__/\  /:/\:\ /__/:/ /:/___ /__/:/  /  /\
# \__\/  |:|/:/ \  \:\/:/~/:/ \  \:\/:/__\/ \  \:\/:::::/ \  \:\ /  /:/
#     |  |:/:/   \  \::/ /:/   \  \::/       \  \::/~~~~   \  \:\  /:/
#     |  |::/     \__\/ /:/     \  \:\        \  \:\        \  \:\/:/
#     |  |:/        /__/:/       \  \:\        \  \:\        \  \::/
#     |__|/         \__\/         \__\/         \__\/         \__\/


#---------------------------------------
# Environment variables & Declarations
#---------------------------------------
export monitor1="eDP"
export monitor2="VGA-0"
export SPICETIFY_INSTALL="/home/jothamsoboyejo/spicetify-cli"
export PATH="$SPICETIFY_INSTALL:$PATH"
export UPDATE_ZSH_DAYS=13
export ZSH="/home/jothamsoboyejo/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

declare -x path_colors=$HOME/.scripts

#-----------------------
# Imports
#-----------------------
. $path_colors/color.zsh

#-----------------------
# THEMING
#-----------------------

# wal
. "${HOME}/.cache/wal/colors.sh"
# Keeping config terminal theme
(cat ~/.cache/wal/sequences &)


ZSH_THEME="robbyrussell"
ISABLE_UPDATE_PROMPT="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
plugins=(zsh-autosuggestions thefuck history-substring-search zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

#-----------------------
# Aliases
#-----------------------
alias zconfig="emacs -nw ~/.zshrc"
alias ohmyzsh="emacs -nw ~/.oh-my-zsh"
alias monkey="conda activate D-Monkey"
alias walpic="wal -i  /home/jothamsoboyejo/Pictures/ ; bspc wm -r"
alias c="clear"
alias x="exit"
alias doomsync="~/.emacs.d/bin/doom sync"
alias polyconfig="emacs -nw ~/.config/polybar/config"
alias commandconfig="emacs -nw ~/.config/sxhkd/sxhkdrc"
alias wmconfig="emacs -nw ~/.config/bspwm/bspwmrc"
alias roficonfig="sudo emacs -nw /usr/share/rofi/themes/clean.rasi"
alias crittyconfig="emacs -nw ~/.config/alacritty/alacritty.yml"
alias piconfig="emacs -nw ~/.config/picom/picom.conf"
alias vaders="ninvaders"
alias doom="emacs -nw $1"

# External
export CFLAGS="-fsanitize=signed-integer-overflow -fsanitize=undefined -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow"
export LDLIBS="-lcrypt -lcs50 -lm"
export LIBRAR_PATH=/usr/local/lib


eval $(thefuck --alias)


#----------------------------
# Miniconda
#----------------------------
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jothamsoboyejo/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jothamsoboyejo/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/jothamsoboyejo/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/jothamsoboyejo/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
