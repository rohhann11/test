#!/bin/bash

# Prompt the user for the file name
echo "Enter the file name to create:"
read filename

# Prompt the user for the content to add to the file
echo "Enter the content you want to add to the file:"
read content

# Create the file and add the content
echo "$content" > "$filename"

# Confirm that the file has been created
if [ -f "$filename" ]; then
    echo "File '$filename' created successfully with the content."
else
    echo "Failed to create the file."
fi
