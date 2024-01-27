#!/bin/bash

function subscribe_and_log() {
    # Ask for the topic
    read -p "Type the topic: " topic

    # Ask for the file_name CSV file
    read -p "Type the file.csv: " file


    # Checking if topic and file are provided
    if [ -z "$topic" ] || [ -z "$file" ]; then
        echo "Both topic and file are required."
        return 1
    fi

    # Ask for the rate at which data is published
    read -p "Enter the rate at which data is published: " rate

    # Checking if rate is provided
    if [ -z "$rate" ]; then
        echo "Rate is required."
        return 1
    fi

    
}

# Example usage
subscribe_and_log
