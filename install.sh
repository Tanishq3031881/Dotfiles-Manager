#!/bin/bash
set -e

DOTFILES=(.bashrc .vimrc .gitconfig)
DOTFILES_DIRECTORY="$PWD/.dotfiles"
BACKUP_DIRECTORY="$HOME/dotfiles_backup_$(date +%Y%m%d_%H%M%S)"

echo "Starting dotfiles installation..."

mkdir -p "$BACKUP_DIRECTORY"

for file in "${DOTFILES[@]}"; do
    SOURCE="$DOTFILES_DIR/$file"
    DESTINATION="$HOME/$file"

    if [ -f "$DESTINATION" ] || [ -L "$DESTINATION" ]; then
        echo "Backing up existing $file to $BACKUP_DIRECTORY"
        mv "$DESTINATION" "$BACKUP_DIRECTORY"
    fi

    echo "Linking $file to $DESTINATION"
    ln -s "$SRC" "$DESTINATION"
done

echo "Installation complete. Yipeee!!"
