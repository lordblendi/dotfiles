#!/bin/bash

dir=~/dotfiles/.                       # dotfiles directory
dir_backup=~/dotfiles_old             # old dotfiles backup directory


# for copying files: 
# cp -r -u 
# -r: copy directories recursively 
# -u: copy only when the SOURCE file is newer than 
#     the destination file 
#     or when the destination file is missing


# for symlinking files:
# ln -f TARGET DESTINATION
# -f: remove existing destination files


# creates new folder
# -p: no error if existing, make parent directories as needed
function new_dir {
  mkdir -p $1
}

# creates symlinks for files that are listed in the files_to_coy/ [parameter one].txt 
# if there is a second parameter:
#    create the symlinks from that folder under ~/
function symlink {
  new_dir $1
  if [ $2 ]; then
    cat files_to_copy/$1.txt | xargs -I % ln -f ~/$2/% $1
  else
    cat files_to_copy/$1.txt | xargs -I % ln -f ~/% $1
  fi

  echo -e "done\n"
}

# Create dotfiles_old in homedir
echo  "Creating $dir_backup folder for backup of any existing dotfiles"
new_dir $dir_backup
echo -e "Copying $dir to $dir_backup. Update if it exists.\n\n"
cp -ruf $dir $dir_backup



###
# Atom
###
echo "Saving Atom settings"
echo " Exporting installed community packages"
apm list --installed --bare > atom/package-list.txt
echo " Symlinking config files"
symlink atom .atom

###
# Basic Unix
###
echo "Saving basic unix dotifles"
symlink unix
new_dir bin
cp -r -u ~/bin .

###
# Fish settings
###

echo "Saving Fish settings"
symlink fish .config/fish

###
# Visual Code settings
###

echo "Saving Visual Code settings"
symlink code .config/Code/User

###
# Visual Code settings
###

echo "Saving Visual Code settings"
symlink franz .config/Franz/settings
