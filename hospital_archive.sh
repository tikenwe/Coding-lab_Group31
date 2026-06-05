#!/bin/bash

# Member 2 - The Archivist
# rotate_logs() - Moves files to archives and recreates clean templates
rotate_logs() {
    TIMESTAMP=$(date +%Y%m%d_%H%M)
    echo "Starting log rotation..."
    mkdir -p archived_logs
    
    for log in active_logs/*.log; do
        if [ -f "$log" ]; then
            filename=$(basename "$log" .log)
            mv "$log" "archived_logs/${filename}_${TIMESTAMP}.log"
            touch "$log"
        fi
    done
    echo "Logs archived safely. Fresh logs created."
}

rotate_logs
