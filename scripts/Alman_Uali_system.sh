#!/bin/bash
echo "=============================="
echo "Student Information"
echo "=============================="
echo "Name: Uali"
echo "Surname: Alman"
echo "Group: IT2-2308"
echo "Student ID: 41503"
echo "=============================="
echo "System Information"
echo "=============================="
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Operating System: $(uname)"
echo "Disk Usage:"
df -h / | tail -n 1
echo "=============================="
if [ -f "Alman_Uali_info.txt" ]; then
    echo "Student information file exists."
else
    echo "Student information file does not exist."
fi
