#!/bin/sh
<<<<<<< HEAD
# $XConsortium: xinitrc.cpp,v 1.4 91/08/22 11:41:34 rws Exp $

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
=======
# $Xorg: xinitrc.cpp,v 1.3 2000/08/17 19:54:30 cpqbld Exp $

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/usr/X11R6/lib/X11/xinit/.Xresources
sysmodmap=/usr/X11R6/lib/X11/xinit/.Xmodmap
>>>>>>> origin/master

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

<<<<<<< HEAD
if [ -f $userresources ]; then
    xrdb -merge $userresources
fi
=======
#if [ -f $userresources ]; then
#    xrdb -merge $userresources
#fi
>>>>>>> origin/master

if [ -f $usermodmap ]; then
    xmodmap $usermodmap
fi

<<<<<<< HEAD
if [ -x /usr/bin/scim ]; then
	/usr/bin/scim &
fi

if [ -x /usr/bin/xsnow ]; then
	/usr/bin/xsnow &
fi
=======
bindir=/usr/X11R6/bin
if [ -f $bindir/xautolock ]; then
	xautolock &
fi

# start some nice programs
>>>>>>> origin/master

if [ -x /usr/bin/bbkeys ]; then
	/usr/bin/bbkeys &
fi

<<<<<<< HEAD
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
=======
if [ -x /usr/bin/scim ]; then
	/usr/bin/scim &
fi

if [ -x /usr/bin/bubblemon ]; then
	/usr/bin/bubblemon &
fi

xterm &
exec blackbox
>>>>>>> origin/master
