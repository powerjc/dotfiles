#!/bin/bash

dotfilelist=( 
	".bashrc" 
	".bash_aliases" 
	".bash_exports" 
	".bash_wrappers" 
	".screenrc" 
	".tmux.conf" 
	".vimrc" 
	".nanorc"
 )

dotfilelink () {
	echo "$1"
	if [ -f ~/"$1" ]
	then 
		mv ~/"${1}" ~/"${1}.bak"
		ln -s ~/"dotfiles/${1}" ~/
	else 
		ln -s ~/"dotfiles/${1}" ~/
	fi
}

for i in "${dotfilelist[@]}"
  do dotfilelink "$i"
done
