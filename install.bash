#!/bin/bash

if $(command -v orgf >/dev/null 2>&1); then
	echo "Error: command orgf already exists."
else
	echo "Installing orgf"
	sudo cp -vi organize.bash /bin/orgf
fi

if $(command -v lowc >/dev/null 2>&1); then
	echo "Error: command lowc already exists."
else
	echo "Installing lowc"
	sudo cp -vi lowercase.sh /bin/lowc
fi
