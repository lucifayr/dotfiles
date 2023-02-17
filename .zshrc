export EDITOR=nvim
export VISUAL=nvim

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Set Path to personal Notes
export PATH_TO_NOTES="$HOME/my-notes/main/notes"
export PATH_TO_NOTE_TEMPLATE="$HOME/my-notes/main/note-template.md"
export PATH_TO_NOTE_UTILS="$HOME/my-notes/main/scripts"

# Set Path to config files
export PATH_TO_CONFIG="$HOME/projects/arch_config/main/"
export PATH_TO_CONFIG_FILES="$HOME/projects/arch_config/main/scripts/files"
export PATH_TO_CONFIG_DIRECTORIES="$HOME/projects/arch_config/main/scripts/directories"

# Path exports
export PATH=$HOME/.cargo/bin:/home/jackboxx/.local/bin:$PATH
export PATH=$PATH:/usr/local/go/bin

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
ENABLE_CORRECTION="true"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Aliases
alias v="nvim"
alias v.="nvim ."
alias t="tmux"
alias wa="wal -Re"
alias g="git"
alias gs="git status"
alias gl="git log"
alias gw="git worktree"
alias gst="git stash"
alias gstd="git stash clear"
alias nr="npm run"
alias rm="rm -I"
alias mv="mv -i"
alias setclip="xclip -selection c"
alias getclip="xclip -selection c -o"
alias ntm="norg-to-markdown"
alias oof="sudo"
alias ls="exa --color=always --all --group-directories-first --long"
alias tmux="TERM=xterm-256color tmux"

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
    wal -eq -i ~/projects/arch-config/images/background.jpg || wal -eg -i ~/projects/arch-config/images/background.jpg
fi

clear

# setup funky
command -v funky &>/dev/null && eval "$(funky --init zsh)"
