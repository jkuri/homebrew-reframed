#!/usr/bin/env bash
set -euo pipefail

if [ $# -ne 1 ]; then
  echo "Usage: $0 <version>"
  echo "Example: $0 0.10.0"
  exit 1
fi

VERSION="$1"
CASK_FILE="$(cd "$(dirname "$0")" && pwd)/Casks/reframed.rb"
DMG_URL="https://github.com/jkuri/Reframed/releases/download/v${VERSION}/Reframed-${VERSION}.dmg"

echo "Checking release asset..."
HTTP_STATUS=$(curl -sL -o /dev/null -w "%{http_code}" "$DMG_URL")
if [ "$HTTP_STATUS" != "200" ]; then
  echo "Error: DMG not found at $DMG_URL (HTTP $HTTP_STATUS)"
  exit 1
fi

echo "Downloading DMG and computing SHA256..."
SHA256=$(curl -sL "$DMG_URL" | shasum -a 256 | awk '{print $1}')

echo "Updating cask to v${VERSION} (sha256: ${SHA256})"
sed -i '' "s/version \".*\"/version \"${VERSION}\"/" "$CASK_FILE"
sed -i '' "s/sha256 \".*\"/sha256 \"${SHA256}\"/" "$CASK_FILE"

cd "$(dirname "$CASK_FILE")/.."
git add Casks/reframed.rb
git commit -m "update reframed to v${VERSION}"
git push

echo "Done. Cask updated to v${VERSION}"
