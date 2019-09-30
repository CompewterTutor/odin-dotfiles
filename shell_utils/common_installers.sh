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



function install_wp-cli () {
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    php wp-cli.phar --info
    echo "Making executable and placing in path at /usr/local/bin/wp"
    chmod +x wp-cli.phar
    sudo mv wp-cli.phar /usr/local/bin/wp
    echo "WP-CLI installation complete. wo-cli info:"
    wp --info
    echo "Downloading Tab Completions.."
    curl -O https://github.com/wp-cli/wp-cli/raw/master/utils/wp-completion.bash
    echo "source ~/wp-completion.bash" >> ~/.bash_profile.sh
    echo "added wp-completion to ~/.bash_profile"
    
}

function install geoip() {
    sudo apt install -y geoip-bin geoip-database libgeoip-dev
}

function install ncurses() {
    sudo apt install -y libncurses5 libncurses5-dev libncursesw5 libncursesw5-dev
}

function install_goaccess () {
    install_geoip()

    wget https://tar.goaccess.io/goaccess-1.3.tar.gz
    tar -xzvf ~/goaccess-1.3.tar.gz
    cd ~/goaccess-1.3
    ./configure --enable-utf8 --enable-geoip=legacy

}






