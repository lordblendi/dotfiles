dir=~/dotfiles/.                       # dotfiles directory
dir_backup=~/dotfiles_old             # old dotfiles backup directory

function new_dir {
  mkdir -p $1
}

function symlink {
  new_dir $1
  cat files_to_copy/$1.txt | xargs -I % ln -f ~/$2/% $1
}

# Create dotfiles_old in homedir
echo  "Creating $dir_backup folder for backup of any existing dotfiles"
new_dir $dir_backup
echo "Copying $dir to $dir_backup. Update if it exists."
cp -r -u $dir $dir_backup
echo -e "done\n"


###
# Atom
###
echo "Saving Atom settings"
echo "Exporting installed comunity packages and symlinking config files"
symlink atom .atom
apm list --installed --bare > atom/package-list.txt
# cat files_to_copy/atom.txt | xargs -I % ln -f ~/.atom/% atom
echo -e "done\n"

###
# Basic Unix
###
echo "Saving Basic Unix settings"
symlink unix
# new_dir unix
# cat files_to_copy/basic.txt | xargs -I % ln -f ~/% unix
echo -e "done\n"
