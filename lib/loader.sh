#!/bin/bash

##################################################
# Loads the current environment file
##################################################
Env__load(){
    local to_load="$Ash__CALL_DIRECTORY/$(Env__get_filename)"
    if [[ -f "$to_load" ]]; then
        source "$to_load"
    fi
}
