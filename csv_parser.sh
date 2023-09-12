#!/bin/bash
#Write a script that reads a CSV file and displays its contents in a formatted table.
#Make sure the script handles different delimiters and optional headers in the CSV file.

# Function to display a formatted table
display_table() {
    local file="$1"
    local delimiter="$2"
    local has_header="$3"

    # Check if the file exists
    if [ ! -e "$file" ]; then
        echo "Error: The file '$file' does not exist."
        exit 1
    fi

    # Determine the number of columns
    local num_columns=$(head -n 1 "$file" | tr "$delimiter" "\n" | wc -l)

    # Print header if it exists
    if [ "$has_header" -eq 1 ]; then
        head -n 1 "$file" | tr "$delimiter" "\t"
        echo
    fi

    # Print data rows
    tail -n +$((has_header + 1)) "$file" | while IFS="$delimiter" read -r -a row; do
        for ((i = 0; i < num_columns; i++)); do
            echo -n "${row[i]}"$'\t'
        done
        echo
    done
}

# Check for the correct number of arguments
if [ "$#" -lt 1 ]; then
    echo "Usage: $0 <CSV_file> [delimiter] [has_header]"
    exit 1
fi

# Set default delimiter to comma (",") and has_header to true (1)
delimiter="${2:-,}"
has_header="${3:-1}"

# Call the display_table function
display_table "$1" "$delimiter" "$has_header"
