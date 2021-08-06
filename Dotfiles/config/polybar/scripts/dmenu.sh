#!/bin/sh

# A dmenu wrapper script for system functions.

# For non-systemd init systems.
case "$(readlink -f /sbin/init)" in
	*openrc*) reb="loginctl reboot"; shut="loginctl poweroff" ;;
esac

cmds="\
  lock		slock
  reboot	${reb:-loginctl poweroff}
  power off	${shut:-loginctl poweroff}
  display off 	 xset dpms force off"

choice="$(echo "$cmds" | cut -d'	' -f 1 | dmenu -p BYE -l 6 )" || exit 1

`echo "$cmds" | grep "^$choice	" | cut -d '	' -f2-`
