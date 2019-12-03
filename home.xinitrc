xbindkeys
roxterm &
(conky | while read line; do xsetroot -name "$line"; done) &
# Keyboard repeat settings
xset r rate 200 30
# Enable bells
xset b on
exec dwm
