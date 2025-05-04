#!/bin/bash

# Get system information
HOSTNAME=$(hostname)
KERNEL=$(uname -r)
UPTIME=$(uptime -p)
CPU=$(grep "model name" /proc/cpuinfo | head -n 1 | cut -d ':' -f 2 | sed 's/^[ \t]*//')
MEMORY=$(free -h | grep "Mem:" | awk '{print $3 " / " $2}')
DISK=$(df -h / | awk 'NR==2 {print $3 " / " $2 " (" $5 ")"}')

# Modern color palette
C1="\e[38;2;129;204;255m" # Light blue
C2="\e[38;2;162;136;227m" # Lavender
C3="\e[38;2;92;230;186m"  # Mint green
C4="\e[38;2;255;168;168m" # Soft red
C5="\e[38;2;253;215;130m" # Soft yellow
BOLD="\e[1m"
RESET="\e[0m"

# Add margin at the top
echo ""
echo ""

# ASCII art with modern colors
echo -e "${C1}  ███╗   ██╗     ${C2} █████╗ ██╗  ██╗███╗   ███╗███████╗██████╗     ${C3} ███╗   ██╗   ${C1}  ${BOLD}Hostname${RESET}${C1}: $HOSTNAME"
echo -e "${C1}  ████╗  ██║     ${C2}██╔══██╗██║  ██║████╗ ████║██╔════╝██╔══██╗    ${C3} ████╗  ██║   ${C1}  ${BOLD}Kernel${RESET}${C1}: $KERNEL"
echo -e "${C1}  ██╔██╗ ██║     ${C2}███████║███████║██╔████╔██║█████╗  ██║  ██║    ${C3} ██╔██╗ ██║   ${C1}  ${BOLD}Uptime${RESET}${C1}: $UPTIME"
echo -e "${C1}  ██║╚██╗██║     ${C2}██╔══██║██╔══██║██║╚██╔╝██║██╔══╝  ██║  ██║    ${C3} ██║╚██╗██║   ${C4}  ${BOLD}CPU${RESET}${C4}: $CPU"
echo -e "${C1}  ██║ ╚████║     ${C2}██║  ██║██║  ██║██║ ╚═╝ ██║███████╗██████╔╝    ${C3} ██║ ╚████║   ${C4}  ${BOLD}Memory${RESET}${C4}: $MEMORY"
echo -e "${C1}  ╚═╝  ╚═══╝     ${C2}╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═════╝     ${C3} ╚═╝  ╚═══╝   ${C4}  ${BOLD}Disk${RESET}${C4}: $DISK"

# Add some space before date/time
echo ""

# Add current date and time with modern color
echo -e "${C5}                          ${BOLD}$(date '+%A, %B %d, %Y %H:%M:%S')${RESET}"

# Reset text formatting
echo -e "${RESET}"
