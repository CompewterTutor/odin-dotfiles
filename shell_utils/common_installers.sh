#!/bin/bash
#  __   __                              __                      __         ___        
# |  |_|  |--.-----.-----.-----.----.--|  |.-----.----.--.--.  |__|.-----.'  _|.-----.
# |   _|     |  -__|     |  -__|   _|  _  ||  -__|   _|  |  |__|  ||     |   _||  _  |
# |____|__|__|_____|__|__|_____|__| |_____||_____|__| |___  |__|__||__|__|__|  |_____|
#                                                     |_____|                         
# #
#  ____ ____ _  _ _  _ ____ __ _
#  |___ [__] |\/| |\/| [__] | \|
#  _ __ _ ____ ___ ____ _    _    ____ ____ ____
#  | | \| ====  |  |--| |___ |___ |=== |--< ====

log_file=~/dot-file-install.log

install_package ()
{
	if [-z "$1" ]
	then
		echo "-I need a package name to install"
	else
		echo "Trying to install $1"
	fi

	sudo apt install -y $1
	if type-p $1 > /dev/null; then
		echo "$1 installed..." >> $log_file
		echo "$1 installed..."
	else
		echo "$1 failed to install" >> $log_file
		echo "$1 failed to install"
	fi
}


install_wp-cli () {
    $(curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar)
    `php wp-cli.phar --info`
    echo "Making executable and placing in path at /usr/local/bin/wp"
    `chmod +x wp-cli.phar`
    `sudo mv wp-cli.phar /usr/local/bin/wp`
    echo "WP-CLI installation complete. wo-cli info:"
    `wp --info`
    echo "Downloading Tab Completions.."
    `curl -O https://github.com/wp-cli/wp-cli/raw/master/utils/wp-completion.bash`
    `source ~/wp-completion.bash >> ~/.bash_profile.sh`
    echo "added wp-completion to ~/.bash_profile"
    
}

install_vundle () {
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
}

install_vim () {
	install_package nvim 
	#install vundle
	echo 'installing vundle'
	install_vundle
	local localdir=$(pwd)
	
}

install_ycm () {
    sudo apt install build-essential cmake
    #check for golang
    install_package golang
}

install_geoip() {
    sudo apt install -y geoip-bin geoip-database libgeoip-dev
}

install_ncurses () {
    sudo apt install -y libncurses5 libncurses5-dev libncursesw5 libncursesw5-dev
}

install_goaccess () {
    install_geoip

    wget https://tar.goaccess.io/goaccess-1.3.tar.gz
    tar -xzvf ~/goaccess-1.3.tar.gz
    cd ~/goaccess-1.3
    ./configure --enable-utf8 --enable-geoip=legacy

}

install_golang () {
    install_package golang
}

install_rust () {
    curl https://sh.rustup.rs -sSf | sh
}
