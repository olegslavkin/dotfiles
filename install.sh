#~/bin/bash
# Global vars:
SSHKEYGEN=0  
VIM_PLUG_INSTALL=1

## Functions
function yesno() {
	case "$1" in
		[yY] | [yY][eE][sS]) return   1 ;;
		[nN] | [nN][oO])     return   0 ;;
		*)                   return 254 ;;
	esac
}

function checkutils() {
	local whichutil=$(which $1)
	if [ -z $whichutil ]; then
		echo -e "Please install $1"
	fi
}

# Generate SSH key for github.com
function sshkeygen() {
read -p "Generate ssh-key for github.com [y/n]:" _sshkeygithub
yesno $_sshkeygithub
SSHKEYGEN=$?

if [ $SSHKEYGEN -eq 1 ]; then
        read -sp "Please input the password for ssh-key:" _sshkeygithub_pass
        ssh-keygen -q -f $HOME/.ssh/github -P $_sshkeygithub_pass
        echo -e "\n"
fi
}

function vim_plug_install() {
	local _vim_plug=0
	read -p "Install vim-plug [y/n]:" _vim_plug_install
	yesno $_vim_plug_install
	_vim_plug=$?
	if [ $_vim_plug -eq 1 ]; then
		checkutils _curl
		cd $HOME
		curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    		  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	fi
}

function automount_vboxsf() {
	# TODO
	# Check host.
	local isVirtualBox=$(lspci -vv | grep -i virtualbox | wc -l)
	if [ $isVirtualBox -eq 0 ]; then
		return -1
	fi
	read -p "Add automount vboxsf [y/n]:" _automount_vboxsf
	read -p "Please input shared folder:" _vboxshared
	read -p "Please input mount folder:" _mount_folder
	sudo echo "$_vboxshared $_mount_folder vboxsf defaults,uid=$(id -u),gid=$(id -u),dmode=700,fmode=600 0 0" #>> /etc/fstab 
}

# Copy files
function copyfiles() {
cp -r .tmux.conf tmux-keybindings.conf .ssh .gitconfig $HOME
}

function testyn() {
	yesno $1
	echo $?
}


###########################
## main
##
###########################

#checkutils
#sshkeygen
#copyfiles
