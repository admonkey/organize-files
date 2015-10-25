#!/bin/bash
# collect files into sorted folders

# get list of folders in current directory without trailing slash
folders=(  $( ls -d */ | sed 's|[/]||g' )  )

# no case sensitivity; will revert after script ends
shopt -s nocaseglob

# iterate through array of folders
for folder in ${folders[*]}; do

	# create log variables
	log="organize.bash.log.$folder.txt"
	timestamp="# "$(date +"%Y-%m-%d.%A.%H:%M:%S")
	
	# group same name files into folders without overwriting
	# FIX error moving folder into itself
	mv -vn $folder* $folder/ 2>&1 | grep -v "to a subdirectory of itself" | tee temp

	# if new, then clobber old log
	# FIX: tee seems to be writing blank files
	if [[ -f temp ]]; then
		echo $timestamp > $log
		cat temp >> $log
		rm temp
	fi

	mv -vn $folder* $folder/ 2>&1 | grep -v "to a subdirectory of itself"
done
