export EDITOR=nvim
export VISUAL=nvim

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# Path exports
export PATH=$HOME/.cargo/bin:/home/jackboxx/.local/bin:$PATH
export PATH=$PATH:$HOME/go/bin
export PATH=$PATH:~/.local/bin

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
alias ga="git add"
alias gaa="git add ."
alias gc="git commit"
alias gp="git push"
alias gpl="git pull"
alias gco="git checkout"
alias gs="git status"
alias gl="git log"
alias gm="git merge"
alias gr="git rebase"
alias gd="git diff"
alias gds="git diff --staged"
alias gw="git worktree"
alias gst="git stash"
alias gstc="git stash clear"
alias gstp="git stash clear"

case $(tty) in 
  (/dev/tty[1-9]) alias tmux="tmux";; 
              (*) alias tmux="TERM=xterm-256color tmux";; 
esac


alias t="tmux"
alias tp="tmux new-session -c sh ~/projects/dotfiles/custom/list-projects.sh"
alias tn="tmux new-session -c sh ~/projects/dotfiles/custom/notes.sh"
alias ta="tmux attach"
alias tk="tmux kill-session"
alias td="tmux detach-client"
alias rm="rm -I"
alias mv="mv -i"
alias update="sudo pacman -Syu"
alias install="sudo pacman -S"
alias uninstall="sudo pacman -R"
alias cd="z"
alias ls="eza --color=always --all --group-directories-first --long"
alias cat="bat"
alias grep="rg"
alias du="dust"
alias speedtest="speedtest-rs"
alias sauce="source"
alias cargo-publish="cargo publish --token \$(ansible-vault decrypt ~/projects/dotfiles/private/crates-io-api-token --output /tmp/token && cat /tmp/token)"
alias xcb="xclip -selection clipboad"
alias attitude="attitudes | xclip -selection clipboad"
alias awman="~/projects/dotfiles/custom/archwiki-man"
alias gcn="~/projects/dotfiles/custom/commit_changed_notes"
alias cargo-doc="BROWSER=google-chrome-stable cargo doc --all-features --open"
alias tt-start-tunnels="cat ~/tt-server-data | xargs -L 1 tt-ssh-forward"
alias tt-kill-tunnels="ps -aux | grep \"ssh -N -L\" | awk '{print \$2}' | xargs kill"
alias tor-browser="flatpak run com.github.micahflee.torbrowser-launcher"

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

# Android SDK for Rust builds
export ANDROID_HOME=$HOME/android
export GRADLE_ROOT=$HOME/gradle
export PATH=$PATH:$ANDROID_HOME/cmdline-tools/cmdline-tools/bin:${ANDROID_HOME}/platform-tools
export PATH=$PATH:$GRADLE_ROOT/gradle-7.5.1/bin
export NDK_HOME=$ANDROID_HOME/ndk/25.1.8937393

#[ -f "/home/lucifer/.ghcup/env" ] && source "/home/lucifer/.ghcup/env" # ghcup-env
[ -f "/home/lucifer/.ghcup/env" ] && source "/home/lucifer/.ghcup/env" # ghcup-env
