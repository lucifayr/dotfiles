#!/bin/sh

sudo pacman -S cargo python python-pip go nodejs-lts-hydrogen npm gopls rust-analyzer meson ninja thefuck flatpak gitui git-delta sad fd
yay -S postman-bin 

sudo npm i -g svelte-language-server typescript-language-server typescript yarn

cargo install sccache 
RUSTC_WRAPPER=sccache cargo install exa bat ripgrep du-dust cargo-info speedtest-rs wiki-tui

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# nix
curl -L https://nixos.org/nix/install | sh

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
