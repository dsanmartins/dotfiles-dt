#!/bin/sh

DIALOG=Xdialog

$DIALOG --allow-close\
    --stdout\
    --title 'Exit'\
    --menu 'Choose action..'\
           15 50 10 \
    'Shutdown' "" \
    'Reboot' "" \
    'Suspend to RAM' "" \
    'Suspend to Disk' "" \
    1> /tmp/exitval.$$ 2> /dev/null

ACTION=`cat /tmp/exitval.$$`
rm -f /tmp/exitval.$$

case $ACTION in
    'Shutdown') sudo halt ;;
    'Reboot') sudo reboot ;;
    'Suspend to RAM') sudo s2ram ;;
    'Suspend to Disk') sudo s2disk ;;
    *) exit ;;
esac
