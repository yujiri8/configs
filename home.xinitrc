xbindkeys
roxterm &
(conky | while read line; do xsetroot -name "$line"; done) &
# Keyboard repeat settings
xset r rate 200 30
# Disable bells (beep still works)
xset b off
exec dwm
#exec xmonad
