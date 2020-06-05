#!/bin/sh
alias cmd="rsync -crl --delete"
mkdir -p ~/.config/fish
cmd config.fish ~/.config/fish/
cmd micro ~/.config/
cmd dwmconf.h ~/.config/
cmd home.conkyrc ~/.conkyrc
cmd home.xinitrc ~/.xinitrc
cmd home.xbindkeysrc ~/.xbindkeysrc
mkdir -p ~/.config/qutebrowser
cmd qutebrowser_config.py ~/.config/qutebrowser/config.py
cmd mpv ~/.config/
