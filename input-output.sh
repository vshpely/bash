#!/bin/bash


echo "Input file name "
read file
touch $file

text=$(cat << EOF
An old silent pond...
A frog jumps into the pond,
splash! Silence again.

Autumn moonlight-
a worm digs silently
into the chestnut.

In the twilight rain
these brilliant-hued hibiscus -
A lovely sunset.
EOF
)

echo "$text" > $file
cat $file | tee -a file.txt >/dev/null
echo "This is end" >&2


