# Generate SSH keys if they do not already exist
# -----------------------------------------------------------------------------

USER_PART="${USER:-$(whoami)}"
CN="$(scutil --get ComputerName 2>/dev/null || hostname -s)"
HN="$(scutil --get LocalHostName 2>/dev/null || hostname -s)"
DATE="$(date +%F)"
KEY_COMMENT="${USER_PART}@${CN} (${HN}) - ${DATE}"

KEY=~/.ssh/id_ed25519
if [[ ! -f "$KEY" ]]; then
    ssh-keygen -t ed25519 -a 100 -f "$KEY" -C "$KEY_COMMENT" -N ""
    chmod u=rw,go= "$KEY"
    chmod u=rw,go=r "$KEY.pub"
fi

KEY=~/.ssh/id_rsa
if [[ ! -f "$KEY" ]]; then
    ssh-keygen -t rsa -b 4096 -o -a 100 -f "$KEY" -C "$KEY_COMMENT" -N ""
    chmod u=rw,go= "$KEY"
    chmod u=rw,go=r "$KEY.pub"
fi
