# Set desktop background
# -----------------------------------------------------------------------------

FILE="/System/Library/Desktop Pictures/Solid Colors/Black.png"
osascript -e "tell application \"System Events\" to tell every desktop to set picture to POSIX file \"$file\""
