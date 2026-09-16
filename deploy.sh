#!/bin/bash
# deploy.sh — push site/ to jmzx.uk (static; no build step)
set -e
cd "$(dirname "${BASH_SOURCE[0]}")"
SERVER="jmzx.uk"   # ~/.ssh/config alias: root, port 2121, mullvad-exclude
rsync -avz --delete site/ "$SERVER:/var/www/jmzx.uk/"
ssh "$SERVER" "chown -R www-data:www-data /var/www/jmzx.uk"
echo "✅ https://jmzx.uk"
