#!/bin/bash

# API endpoint for Pikachu
API_URL="https://pokeapi.co/api/v2/pokemon/pikachu"

# Output files
OUTPUT_FILE="data.json"
ERROR_FILE="errors.txt"

# Make the API request
curl -s -f "$API_URL" -o "$OUTPUT_FILE"

# Check if curl command was successful
if [ $? -ne 0 ]; then
  echo "Failed to fetch data for Pikachu at $(date)" >> "$ERROR_FILE"
fi
