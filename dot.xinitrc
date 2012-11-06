#!/bin/sh
# $XConsortium: xinitrc.cpp,v 1.4 91/08/22 11:41:34 rws Exp $

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

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

if [ -x /usr/bin/scim ]; then
	/usr/bin/scim &
fi

if [ -x /usr/bin/xsnow ]; then
	/usr/bin/xsnow &
fi

if [ -x /usr/bin/bbkeys ]; then
	/usr/bin/bbkeys &
fi

if [ -x /usr/bin/dropboxd ]; then
	/usr/bin/dropboxd &
fi

if [ -x /usr/bin/xscreensaver ]; then
	/usr/bin/xscreensaver -no-splash &
fi

if [ -x /usr/bin/VBoxClient-all ]; then
	/usr/bin/VBoxClient-all &
fi

# Start the window manager:
if [ -z "$DESKTOP_SESSION" -a -x /usr/bin/ck-launch-session ]; then
  exec ck-launch-session /usr/bin/blackbox
else
  exec /usr/bin/blackbox
fi
