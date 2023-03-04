#!/bin/sh
yay -S slack-desktop
nmcli connection import type openvpn file ~/openvpn/go-stage.ovpn && nmcli connection modify go-stage ipv4.never-default true
