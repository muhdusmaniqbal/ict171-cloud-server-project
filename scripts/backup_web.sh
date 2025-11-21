#!/bin/bash
#
# backup_web.sh - Simple backup script for the web root.
# Creates a timestamped .tar.gz archive of /var/www/html
# and stores it in ~/web_backups.

WEB_ROOT="/var/www/html"
BACKUP_DIR="$HOME/web_backups"

mkdir -p "$BACKUP_DIR"

TIMESTAMP=$(date +"%Y-%m-%d-%H%M%S")
BACKUP_FILE="$BACKUP_DIR/web_backup_$TIMESTAMP.tar.gz"

echo "Creating backup at $BACKUP_FILE"
tar -czf "$BACKUP_FILE" "$WEB_ROOT"

if [ $? -eq 0 ]; then
    echo "Backup successful."
else
    echo "Backup FAILED."
    exit 1
fi
