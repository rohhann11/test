#!/bin/bash

# Define the file path
file_path="/home/ubuntu/jenkins.txt"

# Create the file (it will be empty if it doesn't already exist)
touch "$file_path"

# Optionally, add some content to the file (if desired)
echo "This is the Jenkins file." > "$file_path"

# Print a message indicating that the file has been created
echo "File jenkins.txt has been created at $file_path"
