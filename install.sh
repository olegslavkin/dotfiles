#~/bin/bash
# Global vars:
SSHKEYGEN=0  
VIM_PLUG_INSTALL=1

## Functions
function checkutils() {
If [ -z $(which git) ]; then
	echo "Please install git utils"
fi
if [ -z $(which curl) ]; then
	echo "Please install curl"
fi
}

# Generate SSH key for github.com
function sshkeygen() {
read -p "Generate ssh-key for github.com [y/n]:" _sshkeygithub
case "$_sshkeygithub" in
        [yY] | [yY][eE][sS]) SSHKEYGEN=1 ;;
        [nN] | [nN][oO])     SSHKEYGEN=0 ;;
        *)                   SSHKEYGEN=0 ;;
esac

if [ $SSHKEYGEN -eq 1 ]; then
        read -sp "Please input the password for ssh-key:" _sshkeygithub_pass
        ssh-keygen -q -f $HOME/.ssh/github -P $_sshkeygithub_pass
        echo -e "\n"
fi
}

function vim_plug_install() {
	read -p "Install vim-plug [y/n]:" _vim_plug_install
	case "_vim_plug_install" in
		[yY] | [yY][eE][sS]) VIM_PLUG_INSTALL=1 ;;
		[nN] | [nN][oO])     VIM_PLUG_INSTALL=0 ;;
		*)                   VIM_PLUG_INSTALL=0 ;;
	esac
	cd $HOME
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

function vim_plug_postinstall() {
}

# Copy files
function copyfiles() {
cp -r .tmux.conf tmux-keybindings.conf .ssh .gitconfig $HOME
}


## main
#checkutils
#sshkeygen
#copyfiles
