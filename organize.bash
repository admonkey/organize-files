#!/bin/bash
# collect files into sorted folders

# get list of folders in current directory without trailing slash
folders=(  $( ls -d */ | sed 's|[/]||g' )  )

# iterate through array of folders
for folder in ${folders[*]}; do
	echo $folder
done
