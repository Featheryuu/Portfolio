#!/bin/bash
# Quick deploy: stages, commits, and pushes all changes.
# Usage: ./deploy.sh "your commit message"
#   or:  ./deploy.sh   (uses default message "update")

set -e

MSG="${1:-update}"

echo "→ Staging changes..."
git add .

if git diff --cached --quiet; then
  echo "✓ No changes to deploy."
  exit 0
fi

echo "→ Committing: \"$MSG\""
git commit -m "$MSG"

echo "→ Pushing to GitHub..."
git push

echo "✓ Done. Vercel will rebuild in ~30–60 seconds."
