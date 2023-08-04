#!/bin/bash
#
# Call unzip.sh - Extract a zip file downloaded from Microsoft SharePoint.
#

OUTPUT_FOLDER="$1"
OUTPUT_FILENAME="$2"
URL="$3"

source ./lib/unzip.sh "$OUTPUT_FOLDER" "$OUTPUT_FILENAME" "$URL"
extract