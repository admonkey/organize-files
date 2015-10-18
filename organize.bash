#!/bin/bash
# collect files into sorted folders

array=($(ls -d */))

for folder in ${array[*]}; do
	echo $folder
done
