# Installs oh-my-zsh
# -----------------------------------------------------------------------------
ZDOTDIR="$HOME/.config/zsh" \
ZSH="$HOME/.config/zsh/ohmyzsh" \
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" \
--unattended \
--keep-zshrc
