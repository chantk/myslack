#!/bin/sh
# Default acpi script that takes an entry for all actions

IFS=${IFS}/
set $@

case "$1" in
  button)
    case "$5" in
      00000004) /sbin/shutdown -h now "Power button pressed"
        ;;
      *) logger "ACPI power button is not defined"
    esac
    ;;
  *)  logger "ACPI $1 $2 $5 is not defined"
    ;;
esac
