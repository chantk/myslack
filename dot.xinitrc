#!/bin/sh
# $Xorg: xinitrc.cpp,v 1.3 2000/08/17 19:54:30 cpqbld Exp $

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/usr/X11R6/lib/X11/xinit/.Xresources
sysmodmap=/usr/X11R6/lib/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

#if [ -f $userresources ]; then
#    xrdb -merge $userresources
#fi

if [ -f $usermodmap ]; then
    xmodmap $usermodmap
fi

bindir=/usr/X11R6/bin
if [ -f $bindir/xautolock ]; then
	xautolock &
fi

# start some nice programs

if [ -x /usr/bin/bbkeys ]; then
	/usr/bin/bbkeys &
fi

if [ -x /usr/bin/scim ]; then
	/usr/bin/scim &
fi

if [ -x /usr/bin/bubblemon ]; then
	/usr/bin/bubblemon &
fi

xterm &
exec blackbox
