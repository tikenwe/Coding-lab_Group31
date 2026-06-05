#!/bin/bash
# hospital_analysis.sh
# Member 5 - The Clinical Analyst

echo "Starting clinical analysis..."

process_vitals() {
    echo "Processing critical vitals..."
    grep "CRITICAL" active_logs/heart_rate_log.log | \
    awk -F '|' '{print $1, $2, $3}' >> reports/critical_alerts.txt
    grep "CRITICAL" active_logs/temperature_log.log | \
    awk -F '|' '{print $1, $2, $3}' >> reports/critical_alerts.txt
    echo "Critical vitals saved to reports/critical_alerts.txt"
}

process_vitals
echo "Clinical analysis complete at $(date)"
