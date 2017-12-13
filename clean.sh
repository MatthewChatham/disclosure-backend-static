#!/bin/bash
set -euo pipefail

if [[ "$1" == "A-Contributions" || "$1" == "C-Contributions" || "$1" == "F496P3-Contributions" || "$1" == "I-Contributions" ]]; then

cat <<-QUERY | psql disclosure-backend
  DELETE FROM "$1"
  WHERE "Tran_Date" is NULL;
QUERY
fi
