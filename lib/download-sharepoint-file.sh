#!/bin/bash
#
# Download a Microsoft SharePoint file.
#

OUTPUT_FOLDER="$1"
OUTPUT_FILENAME="$2"

MATCH="\?*"
REPLACE="?download=1"
# Replace '?e=xxx' http query parameter with '?download=1'
URL="${3/$MATCH/$REPLACE}"

function download() {
  # Check if output folder exists
  if  [ ! -f "$OUTPUT_FOLDER" ]; then
    mkdir -p "$OUTPUT_FOLDER"
  fi

  source ./lib/logging.sh
  info_download "$OUTPUT_FOLDER/$OUTPUT_FILENAME"
  # Download
  wget -O "$OUTPUT_FOLDER/$OUTPUT_FILENAME" "$URL"
}
