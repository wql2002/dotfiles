#!/usr/bin/env bash

# Author: JJGO
# source: https://github.com/JJGO/dotfiles/blob/master/setup_all.sh

set -e 			# Exit on error
set -x 			# Enable verbosity

# Dont link DS_Store files
find . -name ".DS_Store" -exec rm {} \;

PROGRAMS=(git tmux vim zsh)

OLD_DOTFILES="${HOME}/dotfile_bak_$(date -u +"%Y%m%d%H%M%s")"

mkdir ${OLD_DOTFILES}

function backup_if_exists() {
	if [ -f $1 ];
	then
	  mv $1 ${OLD_DOTFILES}
	fi
	if [ -d $1 ];
	then
	  mv $1 ${OLD_DOTFILES}
	fi
}

# Clean common conflicts
backup_if_exists ~/.bash_profile
backup_if_exists ~/.bashrc
backup_if_exists ~/.zshrc
backup_if_exists ~/.gitconfig
backup_if_exists ~/.tmux.conf
backup_if_exists ~/.profile

for program in ${PROGRAMS[@]}; do
	stow -v --target=$HOME $program
	echo "Configuring $program"
done

echo "Done!"
