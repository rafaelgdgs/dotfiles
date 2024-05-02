#!/bin/sh
pacman -Qi | awk '/^Name/ {pkg=$3} /Install Date/ {date=$4" "$5" "$6" "$7} {if ($1 == "Install" && $2 == "Reason:") reason=$(NF-1)" "$NF} /Explicitly installed/ {printf "%-30s %-20s %s\n", pkg, date, reason}' | sort -k2M -k3n -k4n -k5n
