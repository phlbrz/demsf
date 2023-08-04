#!/bin/bash
#
# Logging utility.
#

function log() {
  echo >&2 "INFO :: function ${FUNCNAME[2]:-unknown} :: $*"
}

function info_download() {
  local file_to_download="$1"
  # local file_to_download="$OUTPUT_FOLDER/$OUTPUT_FILENAME"
  log "Preparing to download file"
  log "$file_to_download"
  log "From url"
  log "$URL"
  log "With Wget"
  echo -e ""
}
