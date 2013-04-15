# $FreeBSD: src/share/skel/dot.cshrc,v 1.13 2001/01/10 17:35:28 archie Exp $
#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
#

alias h		history 25
alias j		jobs -l
alias ls	ls -F --color
alias la	ls -a
alias lf	ls -FA
alias ll	ls -lA

# A righteous umask
umask 22

setenv ANDROID_SDK_ROOT $HOME/asdk
setenv SDK_UPDATER_URLS "http://bsdroid.org/"

set path = ($HOME/bin $ANDROID_SDK_ROOT/tools $path)

setenv CLASSPATH /usr/local/diablo-jdk1.6.0/bin:/usr/local/diablo-jdk1.6.0/jre/lib:.
setenv DIRAVR /usr/local/avr

setenv	EDITOR	vim
setenv	PAGER	less
setenv	BLOCKSIZE	K
setenv	LANG	en_US.UTF-8

if ($?prompt) then
	# An interactive shell -- set some stuff up
	set filec
	set history = 100
	set savehist = 100
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif
endif
