dir=~/dotfiles/.                       # dotfiles directory
dir_backup=~/dotfiles_old             # old dotfiles backup directory

function new_dir {
  mkdir -p $1
}

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
echo "Copying $dir to $dir_backup. Update if it exists."
cp -r -u $dir $dir_backup



###
# Atom
###
echo "Saving Atom settings"
symlink atom .atom
echo "Exporting installed community packages and symlinking config files"
apm list --installed --bare > atom/package-list.txt

###
# Basic Unix
###
echo "Saving basic unix dotifles"
symlink unix

###
# Fish settings
###

echo "Saving Fish settings"
symlink fish .config/fish
