#!/bin/bash

# Get the day of the month.
day_of_month=$(date +"%d")

# Remove leading zero from the day of the month
day_of_month=$(echo $day_of_month | sed 's/^0*//')

# Deduce the correct suffix.
if [[ $day_of_month -ge 11 && $day_of_month -le 13 ]]; then
    suffix="th"
else
    case $((day_of_month % 10)) in
        1) suffix="st" ;;
        2) suffix="nd" ;;
        3) suffix="rd" ;;
        *) suffix="th" ;;
    esac
fi

# Output the formatted day.
echo "${day_of_month}${suffix}"
