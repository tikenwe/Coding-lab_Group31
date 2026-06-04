# Member 2 - The Security Lead
# secure_data() - Protects active_logs directory

secure_data() {
    echo "Securing hospital data..."

    chmod 700 active_logs
    echo "Permissions set: only owner can read and write."

    ls -l | grep active_logs
    echo "Data security complete."
}

# Verify permissions are correctly set
verify_security() {
    echo "Verifying security settings..."
    ls -la active_logs
    echo "Verification complete."
}

# Run security functions
echo "Running security checks..."
secure_data
verify_security
# Member 3 - The Orchestrator
main() {
    echo "========================================="
    echo "   KNH System Initialization Starting..."
    echo "========================================="
    echo ""
    echo "[Step 1] Initializing system directories..."
    initialize_system
    echo ""
    echo "[Step 2] Securing data environment..."
    secure_data
    echo ""
    echo "========================================="
    echo "   System Environment Secured"
    echo "   Date: $(date)"
    echo "========================================="
}
main

