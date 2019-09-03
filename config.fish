set -x EDITOR nano
set -x PAGER less
set -x GOPATH ~/code/go
set -x PATH $PATH $GOPATH/bin
set -x DWM_CONF ~/.config/dwmconf.h
set -x LESSHISTFILE -
set -x fish_greeting

# delete by word with either ctrl or alt delete (alt backspace is builtin).
bind '[3;5~' kill-bigword
bind '[3;3~' kill-bigword
#bind backspace backward-kill-bigword

# man
function h; man $argv; end
# cd
function g; cd $argv; l; end
function u; g ..; end
function u2; g ../..; end
function uu; u2; end
function b; prevd; l; end
function b2; prevd; prevd; l; end
function f; nextd; l; end
function f2; nextd; nextd; l; end
# ls
function l; command ls -GI $argv; end
function ls; command ls -GA $argv; end # 'list secret'
# editor
function e; nano $argv; end
# other basics
function r; cat $argv; end # read
function d; command rm -r $argv; end # delete
function c; command cp -R $argv; end # copy
function n; command mv $argv; end # name
function i; command stat -x $argv; end # info
function f; command file $argv; end # format/file
function s; command less $argv; end # scroll
# langs
function p; python3.6 $argv; end
function p2; python2.7 $argv; end
function py; pypy3 $argv; end
function gob; go build $argv; end
function gor; go run $argv; end
function gof; goimports -w $argv; end
function gol; golangci-lint $argv; end
function hi; ghci $argv; end
# git
function gits; git status $argv; end
function gitd; git diff $argv; end
function gitdc; git diff --cached $argv; end
function gita; git add $argv; end
function gitl; git log $argv; end
function gitc; git commit $argv; end
# music
function mp; mplayer $argv; end
function ffmpeg; command ffmpeg $argv -hide_banner; end
# alarm shortcut
function alarm; echo "~/code/alarm.sh" | at $argv; end
# 'alert' - run a command and beep if it fails
function al; $argv; if test $status -ne 0; beep; end; end
# 'remind' - run a command and beep when it finishes regardless of exit status
function re; $argv; beep; end

function fish_prompt
	# We have to save the exit status, otherwise the other commands run in the prompt will overwrite it.
	set saved_status $status
	set_color yellow
	echo -n (hostname) (whoami) (prompt_pwd) $saved_status'>'
	set_color normal
end
