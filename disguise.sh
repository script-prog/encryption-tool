#!/bin/bash

# --- TRANSLATION -- ---
FILE_YOU_WANT_LOCKED=$1
RESULT_NAME_INSIGHT="$FILE_YOU_WANT_LOCKED.safe"

# --- EXECUTION ---
echo "Start the disguise process..."
echo "Target: $FILE_YOU_WANT_LOCKED"

xxd -p "$FILE_YOU_WANT_LOCKED" | sed 's/../\\u00&/g' | base64 > "$RESULT_NAME_INSIGHT"

echo "Done! The file is now wrapped in Unicode & Base64.."
echo "Saved as: $RESULT_NAME_INSIGHT"ENYAMARAN"