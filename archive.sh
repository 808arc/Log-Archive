#!/bin/bash
validate_path() {
    local path=$1

    if [ ! -d "$path" ]; then
        echo "Error: $path does not exist"
        exit 1
    fi
}

compress() {
   tar -czf "$LOG_PATH" archive"$LOG_PATH".tar.gz 
}

LOG_PATH=$1
validate_path "$LOG_PATH"
compress