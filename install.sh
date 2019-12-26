#!/bin/sh
alias cmd="rsync -cr --delete"
mkdir -p ~/.config/fish
cmd config.fish ~/.config/fish/
cmd home.nanorc ~/.nanorc
cmd nano ~/.config/
cmd dwmconf.h ~/.config/
cmd home.conkyrc ~/.conkyrc
cmd home.xinitrc ~/.xinitrc
mkdir -p ~/.config/qutebrowser
cmd qutebrowser_config.py ~/.config/qutebrowser/config.py
cmd mpv ~/.config/
