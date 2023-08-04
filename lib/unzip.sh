#!/bin/bash
#
# Extract a zip file downloaded from Microsoft SharePoint.
#

OUTPUT_FOLDER="$1"
OUTPUT_FILENAME="$2"
URL="$3"

function extract() {
  if [ ! -f "$OUTPUT_FOLDER/$OUTPUT_FILENAME" ]; then
    source ./lib/download-sharepoint-file.sh "$OUTPUT_FOLDER" "$OUTPUT_FILENAME" "$URL"
    download
  fi
  cd "$OUTPUT_FOLDER/"
  unzip -n "$OUTPUT_FILENAME"
}
