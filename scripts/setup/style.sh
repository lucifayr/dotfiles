#!/bin/sh
sudo pacman -S python-pywal neofetch

cd /tmp && git clone https://github.com/pipeseroni/pipes.sh && cd pipes && sudo make install
