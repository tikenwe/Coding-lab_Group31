# Kenyatta National Hospital (KNH) Digital Infrastructure

## Project Overview
This repository contains the core automation and analytical infrastructure for managing and securing the data flows of 12 critical medical sensors at Kenyatta National Hospital. The environment ensures strict access controls over live metrics and provides automated clinical alerts and facility resource auditing.

## Group Repository Configuration
* **Group Name:** Coding-lab_Group31
* **Course Assignment:** Group Coding Lab (DevOps Infrastructure & Security)

## Member Roles & Responsibilities
* **Member 1 (The Architect):** System initialization and directory management (`hospital_admin.sh`).
* **Member 2 (The Security Lead):** System hardening, file locking, and standard access permission control.
* **Member 3 (The Orchestrator):** Main process execution wrapper and log diagnostics.
* **Member 4 (The Archivist):** Log rotation and data continuity automation (`hospital_archive.sh`).
* **Member 5 (Clinical Analyst):** Core data processing and critical alert extraction (`hospital_analysis.sh`).
* **Member 6 (Facility Auditor):** Medical facility resource consumption tracking and statistics.

## Project Structure
* `hospital_system.py`: Data Generation Simulator.
* `hospital_admin.sh`: Environment Setup and Security Hardening.
* `hospital_analysis.sh`: Diagnostic Medical Auditing and Alerts.
* `hospital_archive.sh`: File Rotation and Service Continuity Manager.
* `.gitignore`: Medical record data leakage prevention manifest.
