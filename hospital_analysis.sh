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

# Member 6 - Facility Auditor
# Calculates average water usage for ICU_WATER_RESERVE device
water_audit() {
echo "=== ICU Water Usage Report ==="    
echo "Auditing ICU Water Reserve..."
    awk -F '|' 'BEGIN {sum=0; count=0} 
    /ICU_WATER_RESERVE/ {sum+=$3; count++} 
    END {if (count > 0) printf "Average ICU Water Usage: %.2f L/min\n", sum/count; 
    else print "No water data recorded yet."}' active_logs/water_usage_log.log
echo "Water audit complete at $(date)"}

water_audit
