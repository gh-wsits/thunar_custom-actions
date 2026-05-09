#!/bin/bash

FilesPerFolder=1000

TotalFiles=$(find . -maxdepth 1 -type f -print0 | xargs -0 -P $(nproc) stat -c %n | wc -l)
if [ "$TotalFiles" -eq 0 ]; then
    echo "No fitting files found."
    exit 0
fi

Subfolders=$(((TotalFiles + FilesPerFolder - 1) / FilesPerFolder))
echo "Distributing $TotalFiles Files in $Subfolders folders."
for Index in $(seq -w 1 "$Subfolders") ; do

  SubfolderPath="${PWD##*/}_$Index"
  echo "Filling: $SubfolderPath ..."
  mkdir -p "./$SubfolderPath"
  find . -maxdepth 1 -type f -print0 | head -z -n "$FilesPerFolder" | xargs -0 -I {} mv "{}" "$SubfolderPath"

done

echo "... done."
