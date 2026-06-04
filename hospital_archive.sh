#!/bin/bash
# Member 4 - The Archivist
# hospital_archive.sh - Handles M4 data archiving operations

TIMESTAMP=$(date +"%Y%m%d_%H%M")

echo "Starting archive process..."
echo "Timestamp: $TIMESTAMP"

# Move logs from active_logs to archived_logs with timestamp
echo "Archiving heart rate logs..."
if [ -f "active_logs/heart_rate_log.log" ]; then
    mv active_logs/heart_rate_log.log archived_logs/heart_rate_${TIMESTAMP}.log
    echo "Heart rate log archived."
else
    echo "No heart rate log found."
fi

echo "Archiving temperature logs..."
if [ -f "active_logs/temperature_log.log" ]; then
    mv active_logs/temperature_log.log archived_logs/temperature_${TIMESTAMP}.log
    echo "Temperature log archived."
else
    echo "No temperature log found."
fi

echo "Archiving water usage logs..."
if [ -f "active_logs/water_usage_log.log" ]; then
    mv active_logs/water_usage_log.log archived_logs/water_usage_${TIMESTAMP}.log
    echo "Water usage log archived."
else
    echo "No water usage log found."
fi

# Recreate empty log files so Python engine can continue
echo "Recreating empty log files..."
touch active_logs/heart_rate_log.log
touch active_logs/temperature_log.log
touch active_logs/water_usage_log.log
echo "Empty log files recreated."
echo "Archive process complete at $(date)"

