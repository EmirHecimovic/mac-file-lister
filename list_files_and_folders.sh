#!/bin/bash

# Log start time
echo "Starting script at $(date)" > ~/Desktop/debug.txt

# List files in specified directories
find ~/Desktop -type f 2>> ~/Desktop/debug.txt >> ~/Desktop/files_list.txt
find ~/Downloads -type f 2>> ~/Desktop/debug.txt >> ~/Desktop/files_list.txt
find ~/Documents -type f 2>> ~/Desktop/debug.txt >> ~/Desktop/files_list.txt
find ~/Pictures -type f 2>> ~/Desktop/debug.txt >> ~/Desktop/files_list.txt

# List folders in specified directories
find ~/Desktop -type d 2>> ~/Desktop/debug.txt > ~/Desktop/folders_list.txt
find ~/Downloads -type d 2>> ~/Desktop/debug.txt >> ~/Desktop/folders_list.txt
find ~/Documents -type d 2>> ~/Desktop/debug.txt >> ~/Desktop/folders_list.txt
find ~/Pictures -type d 2>> ~/Desktop/debug.txt >> ~/Desktop/folders_list.txt

# List all files and folders on external drives
for drive in /Volumes/*; do
  if [ -d "$drive" ]; then
    find "$drive" -type f 2>> ~/Desktop/debug.txt >> ~/Desktop/files_list.txt
    find "$drive" -type d 2>> ~/Desktop/debug.txt >> ~/Desktop/folders_list.txt
  fi
done

# Log end time
echo "Script completed at $(date)" >> ~/Desktop/debug.txt