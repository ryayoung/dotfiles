# Set up SSH config, linking from tracked file
# -----------------------------------------------------------------------------

# Safely create directory if not exists. Set perms.
mkdir -p ~/.ssh
chmod u=rwx,go= ~/.ssh
# Force link tracked config to ~/.ssh/config. Overwrite existing. Set perms.
ln -sf ~/.config/ssh/config ~/.ssh/config
chmod u=rw,go= ~/.ssh/config
