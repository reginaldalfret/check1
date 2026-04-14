#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
STAMP_FILE="$ROOT_DIR/.github/green/daily-log.md"
UTC_NOW="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"
DAY="$(date -u +"%Y-%m-%d")"

mkdir -p "$(dirname "$STAMP_FILE")"

if [[ ! -f "$STAMP_FILE" ]]; then
  cat > "$STAMP_FILE" <<'DOC'
# Daily Activity Log

This file is updated automatically by GitHub Actions once per day to keep contribution activity consistent.

| Date (UTC) | Commit Timestamp (UTC) |
|---|---|
DOC
fi

# Add one line per day at most.
if ! grep -q "| $DAY |" "$STAMP_FILE"; then
  echo "| $DAY | $UTC_NOW |" >> "$STAMP_FILE"
fi
