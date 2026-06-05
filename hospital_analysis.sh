#!/bin/bash
# hospital_analysis.sh
# Member 5 - The Clinical Analyst
# Handles M5 - Critical Vitals Analysis

echo "Starting clinical analysis..."


# process_vitals() - Find CRITICAL rows in heart rate and temperature logs
process_vitals() {
    echo "Processing critical vitals..."

    echo "Checking heart rate logs for CRITICAL status..."
    grep "CRITICAL" active_logs/heart_rate_log.log | \
    awk -F '|' '{print $1, $2, $3}' >> reports/critical_alerts.txt

    echo "Checking temperature logs for CRITICAL status..."
    grep "CRITICAL" active_logs/temperature_log.log | \
    awk -F '|' '{print $1, $2, $3}' >> reports/critical_alerts.txt

    echo "Critical vitals saved to reports/critical_alerts.txt"
}
