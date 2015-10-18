#!/bin/bash
# collect files into sorted folders

# get list of folders in current directory without trailing slash
folders=(  $( ls -d */ | sed 's|[/]||g' )  )

# no case sensitivity; will revert after script ends
shopt -s nocaseglob

# iterate through array of folders
for folder in ${folders[*]}; do
	# group same name files into folders without overwriting
	# FIX error moving folder into itself
	mv -vn $folder* $folder/
done
