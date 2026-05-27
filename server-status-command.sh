#!/bin/bash
echo "Server Status"
echo "Server Status: $(uptime)"
echo "Server Disk Usage Status"
echo "Disk Usage: $(df -hT)"
echo "Memory Usage Status"
echo "Memore Usage $(free -m)"

