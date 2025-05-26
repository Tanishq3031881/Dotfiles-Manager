#!/bin/bash
set -e

DOTFILES=(.bashrc .vimrc .gitconfig)
BACKUP_DIRECTORY="$HOME/dotfiles_backup_*"

echo "Starting dotfiles restore..."

for backup in $BACKUP_DIRECTORY; do
    if [ -d "$backup" ]; then
        echo "Restoring from backup: $backup"
        for file in "${DOTFILES[@]}"; do
            DESTINATION="$HOME/$file"
            BACKUP_FILE="$backup/$file"

            # Remove symlink if it exists
            if [ -L "$DESTINATION" ]; then
                echo "Removing symlink $DESTINATION"
                rm "$DESTINATION"
            fi

            # Restore backed up file if it exists
            if [ -f "$BACKUP_FILE" ]; then
                echo "Restoring $file to home directory"
                mv "$BACKUP_FILE" "$DESTINATION"
            fi
        done
        echo "Restore from $backup complete."
    fi
done

echo "All restores complete."
