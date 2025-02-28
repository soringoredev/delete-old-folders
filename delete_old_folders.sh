#!/bin/bash

# current dir
DIRECTOR="$(pwd)"

# if DIR exists verification
if [ ! -d "$DIRECTOR" ]; then
    echo "Directorul $DIRECTOR nu există!"
    exit 1
fi

# find and del folders older than 40 days (creation)
find "$DIRECTOR" -mindepth 1 -maxdepth 1 -type d -mtime +40 -exec rm -rf {} +

echo "Folderele mai vechi de 40 de zile au fost șterse din $DIRECTOR."
