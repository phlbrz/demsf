#!/bin/bash
#
# Call download-sharepoint-file.sh - Download a Microsoft SharePoint file.
#

OUTPUT_FOLDER="$1"
OUTPUT_FILENAME="$2"
URL="$3"

source ./lib/download-sharepoint-file.sh "$OUTPUT_FOLDER" "$OUTPUT_FILENAME" "$URL"
download
