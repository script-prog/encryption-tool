#!/bin/bash

# --- TRANSLATION -- ---
COVER_FILE=$1
ORIGINAL_FILE_NAME=$2

# --- EKSEKUSI ---
echo "Opening the Unicode cover..."
echo "Retrieving data from: $COVER_FILE"

cat "$COVER_FILE" | base64 -d | sed 's/\\u00//g' | xxd -r -p > "$ORIGINAL_FILE_NAME"

echo "Success! The original file was restored to: $ORIGINAL_FILE_NAME