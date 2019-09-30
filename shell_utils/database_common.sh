#!/bin/bash
#  __   __                              __                      __         ___        
# |  |_|  |--.-----.-----.-----.----.--|  |.-----.----.--.--.  |__|.-----.'  _|.-----.
# |   _|     |  -__|     |  -__|   _|  _  ||  -__|   _|  |  |__|  ||     |   _||  _  |
# |____|__|__|_____|__|__|_____|__| |_____||_____|__| |___  |__|__||__|__|__|  |_____|
#                                                     |_____|                         
# # #
#  ___  ___    ____ _  _ __ _ ____ ___ _ ____ __ _ ____
#  |__> |==]   |--- |__| | \| |___  |  | [__] | \| ====

function get_mysql_db_from_ledbaseline() {
    local datestamp=`date +"Y-%m-%d-%s"`
    ssh ubuntu@www.ledbaseline.com "mysqldump -u root -p www.ledbaseline.com | gzip -9" > ~/ledbaseline_production.$datestamp.sql.gz 
    echo "created ~/ledbaseline_production.$datestamp.sql.gz"
}

function setup_dev_ledbaseline_from_production_sql() {
    gunzip $1

}

