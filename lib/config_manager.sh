#!/bin/bash

##################################################
# @returns: The current .env filename to load
#   when ash starts up
##################################################
Env__get_filename(){
    if [[ ! -f "$Env_CONFIG_FILE" ]]; then
        Env__set_filename ".env"
    fi
    eval $(YamlParse__parse "$Env_CONFIG_FILE" "Env_config_")
    echo "$Env_config_env_file"
}

##################################################
# Sets the filename of the env file to load
#
# @param $1: The filename of the .env file to load
#   when ash starts up
##################################################
Env__set_filename(){
    local filename="$1"
    if [[ "$filename" = "" ]]; then
        filename=".env"
    fi
    if [[ -f "$Env_CONFIG_FILE" ]]; then
        rm "$Env_CONFIG_FILE"
    fi
    echo "env_file: $filename" >> "$Env_CONFIG_FILE"
}
