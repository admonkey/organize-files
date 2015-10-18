#!/bin/bash
# collect files into sorted folders

# get list of folders in current directory without trailing slash
folders=(  $( ls -d */ | sed 's|[/]||g' )  )

# iterate through array of folders
for folder in ${folders[*]}; do
	# group same name files into folders
	# FIX error moving folder into itself
	mv -n $folder* $folder/
done
