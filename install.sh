#!/bin/sh
alias cmd="rsync -crl --delete"

mkdir -p ~/.config/fish
cmd config.fish ~/.config/fish/

mkdir -p ~/.config/sway
cmd sway ~/.config/sway/config

cmd mpv ~/.config/
cmd tmux.conf ~/.tmux.conf

mkdir -p ~/.config/conky
cmd conky.conf ~/.config/conky/

mkdir -p ~/.config/alacritty
cmd alacritty.yml ~/.config/alacritty/

cmd micro ~/.config/
micro -plugin install go wc bounce quoter
