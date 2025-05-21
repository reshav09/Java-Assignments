#!/bin/bash

# Define the weeks and the corresponding PA and GA files
weeks=("02" "03" "04" "05" "06" "07" "08")
ga_prefix="GA"
pa_prefix="PA"

# Loop over each week to create directories and files
for week in "${weeks[@]}"; do
    # Create directories for the week
    mkdir -p "Week $week"

    # GA files (1, 2, 3) for the current week
    for i in {1..3}; do
        touch "Week $week/$ga_prefix $i.java"
    done

    # PA files (1, 2) for the current week
    for i in {1..2}; do
        touch "Week $week/$pa_prefix $i.java"
    done

    # Optional: Output for verification
    echo "Created files for Week $week:"
    ls "Week $week"
done

echo "All files have been created successfully!"

