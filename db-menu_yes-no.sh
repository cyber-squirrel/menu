#!/bin/bash
# Requires the following to work
# sudo apt-get update
# sudo apt-get install dialog
# dynbox.sh - Yes/No box demo
dialog --title "Delete file" \
--backtitle "Linux Shell Script Tutorial Example" \
--yesno "Are you sure you want to permanently delete \"/tmp/foo.txt\"?" 7 60

# Get exit status
# 0 means user hit [yes] button.
# 1 means user hit [no] button.
# 255 means user hit [Esc] key.
response=$?
case $response in
    0) echo "File deleted.";;
    1) echo "File not deleted.";;
    255) echo "[ESC] key pressed.";;
esac