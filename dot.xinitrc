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

if [ -f $userresources ]; then
    xrdb -merge $userresources
fi

if [ -f $usermodmap ]; then
    xmodmap $usermodmap
fi

bindir=/usr/X11R6/bin
if [ -f $bindir/xautolock ]; then
	xautolock &
fi

if [ -x /usr/bin/scim ]; then
	/usr/bin/scim &
fi

if [ -x /usr/bin/bbkeys ]; then
	/usr/bin/bbkeys &
fi

# Enable VirtualBox functions
if [ -x /usr/bin/VBoxClient-all ]; then
	/usr/bin/VBoxClient-all &
fi

if [ -x /usr/bin/dropboxd ]; then
	/usr/bin/dropboxd &
fi

# start some nice programs

#if [ -x /usr/bin/xsnow ]; then
#	/usr/bin/xsnow &
#fi

if [ -x /usr/bin/xscreensaver ]; then
	/usr/bin/xscreensaver -no-splash &
fi

if [ -x /usr/bin/VBoxClient-all ]; then
	/usr/bin/VBoxClient-all &
fi

if [ -x /usr/bin/root-tail ]; then
	root-tail -g 230x100+1300+3 -font fixed --reload 60 \
		/proc/acpi/battery/BAT0/state &
fi

if [ -x /usr/bin/xterm ]; then
	/usr/bin/xterm &
fi

# Start the window manager:
if [ -z "$DESKTOP_SESSION" -a -x /usr/bin/ck-launch-session ]; then
  exec ck-launch-session /usr/bin/blackbox
else
  exec /usr/bin/startblackbox
fi

