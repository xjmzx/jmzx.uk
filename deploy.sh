#!/bin/bash
# deploy.sh — push site/ to jmzx.uk (static; no build step)
set -e
cd "$(dirname "${BASH_SOURCE[0]}")"
SERVER="jmzx.uk"   # ~/.ssh/config alias: user jmzxukdeb12 (root login is disabled), port 2121, mullvad-exclude
# The webroot is owned by jmzxukdeb12:www-data, so no sudo is needed. nginx only
# reads, so force world-readable modes rather than copying local permissions.
rsync -rlptvz --delete --chmod=D755,F644 site/ "$SERVER:/var/www/jmzx.uk/"
echo "✅ https://jmzx.uk"
