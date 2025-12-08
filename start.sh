#!/bin/bash

# Go to the project root (optional if already in project folder)
cd "$(dirname "$0")"

# Find the first JAR file in target/ directory
JAR_FILE=$(ls target/*.jar | head -n 1)

# Check if JAR exists
if [ ! -f "$JAR_FILE" ]; then
    echo "Error: No JAR file found in target/ folder."
    exit 1
fi

# Run the JAR
echo "Running $JAR_FILE ..."
java -jar "$JAR_FILE"
