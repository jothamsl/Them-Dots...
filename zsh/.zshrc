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
export LANG=en_IN.UTF-8
export LC_ALL=en_IN.UTF-8
export UPDATE_ZSH_DAYS=13
export ZSH="/home/jotham/.oh-my-zsh"
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
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

# if [ "$TMUX"= ""]; then tmux; fi # Tmux Default start

ZSH_THEME="fox"
ISABLE_UPDATE_PROMPT="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
plugins=(git thefuck zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

#-----------------------
# Aliases
#-----------------------
alias zconfig="nvim ~/.zshrc"
alias vim="nvim"
alias monkey="conda activate D-Monkey"
alias c="clear"
alias x="exit"
alias vconf="nvim ~/.vimrc"
alias nvconf="nvim ~/.config/nvim/init.vim"
alias kittyconfig="nvim ~/.config/kitty/kitty.conf"
alias crittyconfig="nvim ~/.config/alacritty/alacritty.yml"
alias tmuxconfig="nvim ~/.tmux.conf"
alias vimthemesdir="cd ~/usr/share/vim/vim81/colors"
alias switchpython="sudo update-alternatives --config python"
alias vispeed="~/.builds/vim-plugins-profile-master/vim-plugins-profile.sh"
# External
export LIBRAR_PATH=/usr/local/lib
export TERMINFO=/usr/share/terminfo
export GO_PATH=$HOME/go


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jotham/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jotham/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/jotham/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/jotham/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

fpath=($fpath "/home/jotham/.zfunctions")

  # Set Spaceship ZSH as a prompt
  autoload -U promptinit; promptinit
  prompt spaceship

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

echo 'eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)' >> /home/jotham/.zprofile
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
