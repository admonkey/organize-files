#!/bin/bash
# collect files into sorted folders

array=($(ls -d */|sed 's|[/]||g'))

for folder in ${array[*]}; do
	echo $folder
done
