#!/bin/bash

##################################################
# Displays the HELP.txt file
##################################################
Env__callable_main(){
    Env__callable_help
}

##################################################
# Displays the HELP.txt file
##################################################
Env__callable_help(){
    more "$Ash__ACTIVE_MODULE_DIRECTORY/HELP.txt"
}

##################################################
# Sets the new env filename that will be loaded
# when ash starts up.
##################################################
Env__callable_set(){
    Env__set_filename "$1"
    Logger__alert "Env File: $(Env__get_filename)"
}

##################################################
# Displays the current .env filename that will be
# loaded when ash starts up.
##################################################
Env__callable_get(){
    Logger__alert "Env File: $(Env__get_filename)"
}
