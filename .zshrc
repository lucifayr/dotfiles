export EDITOR=nvim
export VISUAL=nvim

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Path exports
export PATH=$HOME/.cargo/bin:/home/jackboxx/.local/bin:$PATH
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:~/.local/bin

# carp-lang
export CARP_DIR=~/Carp
export LC_CTYPE=C.UTF-8

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
ENABLE_CORRECTION="true"
plugins=(git docker rust vi-mode zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# SSH agent
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# Aliases
alias v="nvim"
alias v.="nvim ."
alias cdt="cd /tmp"
alias aw="archwiki"
alias aw-rs="archwiki-rs"
alias gui="gitui"
alias g="git"
alias gch="git checkout"
alias gc="git commit"
alias gs="git status"
alias gl="git log"
alias gw="git worktree"
alias gst="git stash"
alias gstd="git stash clear"
alias tmux="TERM=xterm-256color tmux"
alias t="tmux"
alias tp="tmux new-session -c sh ~/projects/dotfiles/custom/list-projects.sh"
alias tn="tmux new-session -c sh ~/projects/dotfiles/custom/notes.sh"
alias ta="tmux attach"
alias tk="tmux kill-server"
alias td="tmux detach-client"
alias cdf=". ~/projects/dotfiles/custom/dir-fzf.sh"
alias nr="npm run"
alias rm="rm -I"
alias mv="mv -i"
alias ntm="norg-to-markdown"
alias update="sudo pacman -Syu"
alias install="sudo pacman -S"
alias uninstall="sudo pacman -R"
alias cinstall="RUSTC_WRAPPER=sccache cargo install"
alias cd="z"
alias ls="exa --color=always --all --group-directories-first --long"
alias cat="bat"
alias grep="rg"
alias du="dust"
alias speedtest="speedtest-rs"
alias wiki="wiki-tui"
alias sauce="source"

eval $(thefuck --alias)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export XDG_USER_CONFIG_DIR=~/.config

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Autorun programms
if [[ ! -z $DISPLAY ]]
then 
    wal -enq -i ~/projects/dotfiles/images/background.png || wal -enq -i ~/projects/dotfiles/images/background.jpg
fi


if [ -e /home/jackboxx/.nix-profile/etc/profile.d/nix.sh ]; then . /home/jackboxx/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

eval "$(zoxide init zsh)"

source ~/.private.sh
