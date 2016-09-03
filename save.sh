dir=~/dotfiles/.                       # dotfiles directory
dir_backup=~/dotfiles_old             # old dotfiles backup directory

function new_dir {
  mkdir -p $1
}

# Create dotfiles_old in homedir
echo  "Creating $dir_backup folder for backup of any existing dotfiles"
new_dir $dir_backup
echo "Copying $dir to $dir_backup"
cp -r $dir $dir_backup
echo -e "done\n"


###############################################################################
# Atom                                                                        #
###############################################################################

# Copy over Atom configs
#cp -r atom/packages.list $HOME/.atom

# Install community packages
#apm list --installed --bare - get a list of installed packages
#apm install --packages-file $HOME/.atom/packages.list


#save .atom files
echo "Saving atom settings"
echo "Exporting installed comunity packages and copying config files"
new_dir atom
apm list --installed --bare > atom/package-list.txt
cat files_to_copy/atom.txt | xargs -I % cp ~/.atom/% atom
echo -e "done\n"
