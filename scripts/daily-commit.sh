#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
DAY="$(date -u +"%Y-%m-%d")"
DAY_DIR="$ROOT_DIR/.github/green/daily-commits/$DAY"
COUNT="${1:-100}"

mkdir -p "$DAY_DIR"

created=0
for i in $(seq -w 1 "$COUNT"); do
  FILE="$DAY_DIR/commit-$i.txt"
  if [[ -f "$FILE" ]]; then
    continue
  fi

  echo "commit=$i utc=$(date -u +"%Y-%m-%dT%H:%M:%SZ")" > "$FILE"
  git add "$FILE"
  git commit -m "chore: daily activity $DAY #$i" >/dev/null
  created=$((created + 1))
done

echo "Created $created commits for $DAY"
