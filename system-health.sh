#!/bin/bash

##################################################################
# Author : Ankit Khatkar
#
# Date: 31/10/2025
#
# This script provides the datails of system health.
#
# 🧠 1. CPU (Processor Health)
#
# 🧮 2. Memory (RAM Health)
#
# 💾 3. Disk (Storage Health)
#
# 🌐 4. Network Health
#
#    5. Processes and Services
#
# 🔋 6. Power and Hardware Health
#
# Version: v1
#
###################################################################


set -eo pipefail

echo "🧠 1. CPU (Processor Health)"

CPUload=$(top -bn1 | grep "load average:" | awk '{print $10 $11 $12}')

echo "CPU Load (1m, 5m, 10m): $CPUload"

FreeMEM=$(top -bn1 | grep "MiB Mem :" | awk '{print $4, $5}')

echo "Free Memory: $FreeMEM"

processors=$(nproc)
load_avg_1m=$(top -bn1 | grep "load average:" | awk '{print $10 $11 $12}'| cut -d',' -f1)
load_avg_5m=$(top -bn1 | grep "load average:" | awk '{print $10 $11 $12}'| cut -d',' -f2)
load_avg_10m=$(top -bn1 | grep "load average:" | awk '{print $10 $11 $12}'| cut -d',' -f3)

if [ $(echo "$load_avg_1m >= $processors" | bc -l) -eq 1 ] || \
   [ $(echo "$load_avg_5m >= $processors" | bc -l) -eq 1 ] || \
   [ $(echo "$load_avg_10m >= $processors" | bc -l) -eq 1 ]; then
        echo "CPU overloaded (processes waiting for CPU time)"
else
        echo "CPU has free capacity"
fi
