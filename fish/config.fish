#-----------------------
# Environment variables
#-----------------------

set monitor1 = "eDP"
set monitor2 = "VGA-0"
cat ~/.cache/wal/sequences # For wal colors

#-----------------------
# Aliases
#-----------------------
function monkey 
    conda activate D-Monkey
end

function c
    clear
end 

function x 
    exit
end

function nvconf 
    nvim ~/.config/nvim/general/settings.vim 
end 

function nvplug 
    command nvim ~/.config/nvim/plugin/plugins.vim
end

function kittyconfig
    nvim ~/.config/kitty/kitty.conf 
end 

function crittyconfig
    nvim ~/.config/alacritty/alacritty.yml 
end 

function tmuxconfig 
    nvim ~/.tmux.conf 
end 

function switchpython 
    sudo update-alternatives --config python
end 

function awc 
    cd ~/Documents/dev/The-amazing-world-of-C 
end 

function dots
    cd ~/Documents/Linux_Confeegs
end 

function fishconf
    nvim ~/.config/fish/config.fish
end


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/jotham/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

