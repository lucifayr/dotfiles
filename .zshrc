export EDITOR=nvim
export VISUAL=nvim

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Set Path to personal Notes
export PATH_TO_NOTES="$HOME/my-notes/main/notes"
export PATH_TO_NOTE_UTILS="$HOME/my-notes/main/scripts"

# Set Path to config files
export PATH_TO_CONFIG="$HOME/projects/arch_config/main/"
export PATH_TO_CONFIG_FILES="$HOME/projects/arch_config/main/scripts/files"
export PATH_TO_CONFIG_DIRECTORIES="$HOME/projects/arch_config/main/scripts/directories"

# Path exports
export PATH=$HOME/.cargo/bin:/home/jackboxx/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
ENABLE_CORRECTION="true"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Aliases
alias vim="nvim"
alias wa="wal -Re"
alias v+="pactl set-sink-volume 0 +5%"
alias v-="pactl set-sink-volume 0 -5%"
alias g="git"
alias gs="git status"
alias ..="cd .."
alias rm="rm -I"
alias mv="mv -i"
alias ls="exa --color=always --all --group-directories-first --long"
alias lsn="lsnotes"

eval $(thefuck --alias)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export XDG_USER_CONFIG_DIR=~/.config

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="${PATH}:${HOME}/.local/bin/"

# Autorun programms
if [[ ! -z $DISPLAY ]]
then 
    # Automatically sets the terminals theme
    PATH_TO_BG=$(cat ~/.config/nitrogen/bg-saved.cfg | grep file | head -n1 |cut -d= -f2)
    wal -i $PATH_TO_BG -ne
fi

clear
