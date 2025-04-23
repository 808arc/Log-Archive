#!/bin/bash

find_log(){
    path=$1
    find "$path" -type d

    if [ ! -d "$path"]; then
        echo "Error: $path does not exist"
        exit
    else
        echo "$path exists"
    fi
}
archive(){
    path=$1
    dir_name="${path##*/}"
    timestamp=$(date +"%Y%m%d_%H%M%S")
    archive_dir="archive"

    mkdir -p "$archive_dir"
    tar -czf "${arichve_dir}/${dir_name}_archive_${timestamp}.tar.gz" "$path"
}

find_log "$1"
archive "$1"

#Archive directory not created or used:
# No logging of archive date/time: ???