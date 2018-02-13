#!/usr/bin/env bash

#
#--Colors--------------------------------------
#
ESC_SEQ="\x1b["
COL_RESET=$ESC_SEQ"39;49;00m"
COL_RED=$ESC_SEQ"31;01m"
COL_GREEN=$ESC_SEQ"32;01m"
COL_YELLOW=$ESC_SEQ"33;01m"
COL_BLUE=$ESC_SEQ"34;01m"

function cool_header() {
	echo "\n"
	echo "\n$COL_RED          ██            ██     ████ ██  ██ $COL_RESET"
    echo "\n$COL_RED          ██            ██     ██       ██ $COL_RESET"
    echo "\n$COL_RED          ██  ██████  ██████ ██████ ██  ██  █████   ██████ $COL_RESET"
    echo "\n$COL_RED      ██████ ██    ██   ██     ██   ██  ██ ██   ██ ██     $COL_RESET"
    echo "\n$COL_RED     ██   ██ ██    ██   ██     ██   ██  ██ ███████  █████ $COL_RESET"
    echo "\n$COL_RED     ██   ██ ██    ██   ██     ██   ██  ██ ██           ██ $COL_RESET"
    echo "\n$COL_RED     ███████ ██████     ██    ██   ██ ███  ██████ ██████ $COL_RESET"
    echo "\n"
	echo "\n"
	echo "\n"
	echo "\n$COL_GREEN   ############################################## $COL_RESET"
	echo "\n$COL_GREEN   #                 WALDEMAR                   # $COL_RESET"
	echo "\n$COL_GREEN   #            Dotfiles for OSX                # $COL_RESET"
	echo "\n$COL_GREEN   ############################################## $COL_RESET"
	echo "\n"
	echo "\n"
	echo "\n"
}
cool_header
