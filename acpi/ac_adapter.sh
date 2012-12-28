#!/bin/sh
# Default acpi script that takes an entry for all actions

IFS=${IFS}/
set $@

case "$1" in
  ac_adapter)
    case "$4" in
      00000000) 
	      logger "ac_adapter 00000000"
	      /usr/sbin/pm-powersave battery
        ;;
      00000001) /usr/sbin/pm-powersave ac
        ;;
      *) logger "ACPI ac_adapter is not defined"
    esac
    ;;
  *)  logger "ACPI $@ is not defined"
    ;;
esac
