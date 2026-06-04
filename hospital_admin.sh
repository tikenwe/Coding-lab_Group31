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
