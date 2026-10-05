#!/bin/bash
# deploy.sh — push site/ to jmzx.uk (static; no build step)
set -e
cd "$(dirname "${BASH_SOURCE[0]}")"
SERVER="jmzx.uk"   # a Host alias in ~/.ssh/config: the user, port and key live there (root login is disabled)
# The webroot is owned by the deploy user, so no sudo is needed. nginx only
# reads, so force world-readable modes rather than copying local permissions.
rsync -rlptvz --delete --chmod=D755,F644 site/ "$SERVER:/var/www/jmzx.uk/"
echo "✅ https://jmzx.uk"
