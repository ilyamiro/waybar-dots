#!/bin/bash

# Count the number of updates available
num_updates=$(sudo dnf check-update | tail -n +3 | wc -l)

# Get the list of packages available for update
tooltip=$(sudo dnf check-update | tail -n +3 | awk '{print $1}' | sort | head -n 50 | tr '\n' '\r')

# Calculate the number of additional updates
other_amount=$((num_updates - 50))

# Add the additional updates to the tooltip string
if [ $other_amount -gt 0 ]; then
    tooltip="$tooltip\rAnd $other_amount more..."
fi

json_obj="{\"text\": $num_updates, \"tooltip\": \"$tooltip\"}"

# Echo the number of updates available
echo "$json_obj"

