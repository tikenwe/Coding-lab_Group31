#!/bin/bash

# Member 1 - The Architect
# initialize_system() - Creates required directories

initialize_system() {
    echo "Initializing system environment..."

    if [ ! -d "active_logs" ]; then
        mkdir active_logs
        echo "Creating active_logs directory..."
    else
        echo "active_logs already exists."
    fi

    if [ ! -d "archived_logs" ]; then
        mkdir archived_logs
        echo "Creating archived_logs directory..."
    else
        echo "archived_logs already exists."
    fi

    if [ ! -d "reports" ]; then
        mkdir reports
        echo "Creating reports directory..."
    else
        echo "reports already exists."
    fi

    echo "System initialization complete."
}
# Member 2 - The Security Lead & The Orchestrator
# secure_data() - Locks down permissions
secure_data() {
    echo "Securing active_logs directory..."
    chmod 700 active_logs
    echo "Permissions updated:"
    ls -ld active_logs
}
# Member 3 - The Orchestrator
# Execution logic calling The Security Lead & The Orchestrator
initialize_system
secure_data
echo "System Environment Secured - $(date)"
