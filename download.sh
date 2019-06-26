#!/bin/bash
rm -r mods
mkdir mods
for url in $(cat modlist.txt)
do
    curl -L "https://minecraft.curseforge.com/projects/$url/files/latest" -o "mods/$url.jar" &
done
