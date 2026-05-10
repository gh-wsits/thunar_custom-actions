#!/bin/bash

if zenity --question --title "Convert selection to .mp3" --text "Delete the original files after conversion?" ; then
  Delete=1
fi

exec 3> >(zenity --notification --listen)

for Track in "$@" ; do

  echo "icon:/usr/share/icons/gnome/scalable/mimetypes/audio-x-generic-symbolic.svg" >&3

  MP3Out=$(basename "$Track" | sed 's/\(.*\)\..*/\1/')
  echo "tooltip: Converting $MP3Out" >&3

  Dest="./$MP3Out".mp3
  gst-launch-1.0 filesrc location="$Track" ! decodebin ! audioconvert ! lamemp3enc target=quality quality=0 ! id3v2mux ! filesink location="$Dest"

  if [ $Delete ] ; then
    rm "$Track"
  fi

done

echo "message:Done" >&3
exec 3>&-
