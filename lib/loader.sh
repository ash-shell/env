#!/bin/bash

##################################################
# Loads the current environment file
##################################################
Env__load(){
    source $(Env__get_filename)
}
