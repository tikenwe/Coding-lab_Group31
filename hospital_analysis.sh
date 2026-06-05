#!/bin/bash

# Member 2 - Clinical Analyst & Facility Auditor
# process_vitals() - Extracts critical medical alerts
process_vitals() {
    echo "Scanning for critical alerts..."
    mkdir -p reports
    grep "CRITICAL" active_logs/heart_rate.log active_logs/temperature.log 2>/dev/null | awk -F',' '{print $1, $2, $3}' > reports/critical_alerts.txt
    echo "Critical alerts saved to reports/critical_alerts.txt"
}

# water_audit() - Calculates ICU water usage average
water_audit() {
    echo "Auditing ICU Water Reserve..."
    awk -F',' 'BEGIN {sum=0; count=0} /ICU_WATER_RESERVE/ {sum+=$3; count++} END {if (count > 0) printf "Average Water Usage: %.2f L\n", sum/count; else print "No water data recorded yet."}' active_logs/water_usage.log 2>/dev/null
}

# System execution logic wrapper
process_vitals
water_audit
