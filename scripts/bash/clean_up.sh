#!/bin/bash

get_hostname() {
    read -p "Enter your hostname: " hostname
}

if [ -z "$1" ]; then
    get_hostname
else
    hostname=$1
fi

basePath="/cygwin64/home/$hostname/sandbox/cobol-source"
binPath="$basePath/bin"

# Check if the bin directory exists and delete it.
if [ -d "$binPath" ]; then
    rm -rf "$binPath"
    echo "'bin' directory deleted successfully."
else
    echo "Directory 'bin' not found."
fi

# Recreate the bin directory
mkdir -p "$binPath"
echo "'bin' directory created successfully."
