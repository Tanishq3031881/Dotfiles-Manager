# Dotfiles-Manager

Simple shell scripts to back up and manage your dotfiles with ease, automating configuration syncing and restoration for a seamless developer environment setup.

---

## Features

- **Backup existing dotfiles:** Automatically moves your current `.bashrc`, `.vimrc`, `.gitconfig`, and more to a timestamped backup folder.
- **Create symbolic links:** Links dotfiles from your repository to your home directory, so your configs are version-controlled and easily portable.
- **Restore originals:** Undo changes by restoring your backed-up dotfiles and removing symbolic links.
- **Safe & reversible:** Your original files are never lost — you can always revert to your previous environment.

---

## Run

- **./install.sh**
- **./restore.sh**