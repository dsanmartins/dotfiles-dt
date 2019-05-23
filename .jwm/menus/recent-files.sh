#!/bin/sh
XBEL_PATH=/home/dt/.local/share/recently-used.xbel
MAX_ITEMS=20

if [[ -e $XBEL_PATH ]];then
   ITEMS=$(sed -rn 's_.*file://([^"]*).*_<Program label="\1">rox -s "\1"</Program>_ p' "$XBEL_PATH")
else
   ITEMS="<Program label=\"File ${XBEL_PATH##*/} not found!\"></Program>"
fi
echo    "<JWM>"
echo -e "${ITEMS//%/\\x}" | tail -n $MAX_ITEMS
echo    "</JWM>"
