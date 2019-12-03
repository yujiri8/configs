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
function h; man $argv; end # help
# cd
function g; cd $argv; l; end # go
function u; g ..; end # up
function u2; g ../..; end
function uu; u2; end
function b; prevd $argv; l; end # back
function f; nextd $argv; l; end # forward
function b2; b 2; end
function f2; f 2; end
# mkdir
function mk; mkdir $argv; end
function gn; mkdir -p $argv; g $argv; end # go new
# ls
function l; command ls -GI $argv; end
function ls; command ls -GA $argv; end # list secret
# editor
function e; nano $argv; end
# other basics
function r; cat $argv; end # read
function d; rm -r $argv; end # delete
function c; cp -R $argv; end # copy
function n; mv $argv; end # name
function i; stat -x $argv; end # info
function t; file $argv; end # type
function s; less $argv; end # scroll
function k; kill $argv; end
function kn; killall $argv; end # kill name
function sf; find $argv; end # search file
function st; grep -E --color --directories=skip $argv; end # search text
function sed; command sed -E $argv; end
function loc; locate $argv; end
# langs
function p; python3.6 $argv; end
function p2; python2.7 $argv; end
function py; pypy3 $argv; end
function pd; pydoc3.6 $argv; end
function gob; go build $argv; end
function gor; go run $argv; end
function gof; goimports -w $argv; end
function gol; golangci-lint $argv; end
function god; go doc $argv; end
function hi; ghci $argv; end
function hs; runghc $argv; end
# git
function gits; git status $argv; end
function gitd; git diff $argv; end
function gitdc; git diff --cached $argv; end
function gita; git add $argv; end
function gitau; git add -u $argv; end
function gitl; git log $argv; end
function gitc; git commit $argv; end
function gitca; git commit --amend $argv; end
function ccount; git log --oneline | wc -l; end # commit count
# music
function mp; mpv $argv; end
function ffmpeg; command ffmpeg $argv -hide_banner; end
# alarm shortcut
function alarm; echo "~/code/util/alarm.sh" | at $argv; end
# 'alert' - run a command and beep if it fails
function al; $argv; if test $status -ne 0; alert_fork; end; end
# 'remind' - run a command and beep when it finishes regardless of exit status
function re; $argv; alert_fork; end

# helper to make a sound, that uses beep if the session is local and tries ASCII BEL if it's not.
function alert_fork
	if test -n "$SSH_CONNECTION"
		echo \a 1>&2
	else
		beep
	end
end

function fish_prompt
	# We have to save the exit status, otherwise the other commands run in the prompt will overwrite it.
	set saved_status $status
	set_color yellow
	echo -n (hostname) (whoami) (prompt_pwd) (date +'%M:%S') $saved_status'>'
	set_color normal
end
