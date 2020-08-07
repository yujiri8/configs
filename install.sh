#!/bin/sh
alias cmd="rsync -crl --delete"
mkdir -p ~/.config/fish
cmd config.fish ~/.config/fish/
cmd dwmconf.h ~/.config/
cmd home.conkyrc ~/.conkyrc
cmd home.xinitrc ~/.xinitrc
cmd home.xbindkeysrc ~/.xbindkeysrc
cmd mpv ~/.config/
cmd micro ~/.config/
micro -plugin install go wc bounce quoter
