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

export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/home/jothamsoboyejo/.oh-my-zsh"
export UPDATE_ZSH_DAYS=14
export LANG=en_US.UTF-8

#-----------------------
# THEMING
#-----------------------

# wal
. "${HOME}/.cache/wal/colors.sh"

# Keeping config terminal theme
(cat ~/.cache/wal/sequences &)

#-----------------------
# Imports
#-----------------------

ZSH_THEME="fox"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

#-----------------------
# Aliases
#-----------------------
alias zconfig="nvim ~/.zshrc"
alias c="clear"
alias x="exit"
alias nvconf="nvim ~/.config/nvim/"
alias kittyconfig="nvim ~/.config/kitty/kitty.conf"


# Preferred editor for local and online 
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
