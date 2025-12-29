# Apply MacOS Settings
# - This is idempotent, but many configs require system restart to take effect.
# -----------------------------------------------------------------------------

# #######################################################################################
# Things I could maybe change later
# #######################################################################################

# Key repeat rate
# - These go outside the bounds of the GUI sliders: Settings -> Keyboard -> Key Repeat & Delay Until Repeat
# - Restart required to take effect
defaults write -g KeyRepeat -int 1
defaults write -g InitialKeyRepeat -int 10

# Trackpad speed
# - Settings -> Trackpad -> Tracking speed
defaults write -g com.apple.trackpad.scaling 2.5

# Autohide dock
# - Settings -> Desktop & Dock -> Dock -> Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Autohide menu bar (bar at very top of screen)
# - Settings -> Control Center -> Menu Bar -> Automatically hide and show the menu bar
defaults write -g _HIHideMenuBar -bool true

# Speed up dock animation time
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0.2

# #######################################################################################
# Things I will never change
# #######################################################################################

# Dont automatically rearrange desktops (Spaces)
# - Settings -> Desktop & Dock -> Mission Control -> "Automatically rearrange Spaces based on most recent use"
defaults write com.apple.dock mru-spaces -bool false

# Show filename extensions
# - Finder -> Settings -> Advanced -> "Show all filename extensions"
defaults write -g AppleShowAllExtensions -bool true

# show hidden (dot-prefixed) files in Finder by default
# - Can't change default from GUI, but can always toggle with Cmd+Shift+.
defaults write com.apple.finder AppleShowAllFiles -bool true

# Set Finder to use List View by default, instead of gallery
defaults write com.apple.finder FXPreferredViewStyle -string Nlsv

# prevent Finder from auto-switching to other view modes
defaults write com.apple.finder FXEnableAutomaticViewSwitching -bool false

# expand save/print panels by default. Saves you a click.
defaults write -g NSNavPanelExpandedStateForSaveMode -bool true
defaults write -g PMPrintingExpandedStateForPrint -bool true

# stop Photos from opening when devices are plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

# This isn't a tablet or phone. Disable smart quote/dash, autocorrect, auto-cap
# - Settings -> Keyboard -> Text Input -> Input Sources -> Edit -> ...
defaults write -g NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write -g NSAutomaticDashSubstitutionEnabled -bool false
defaults write -g NSAutomaticPeriodSubstitutionEnabled -bool false
defaults write -g NSAutomaticTextCompletionEnabled -bool false
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false
defaults write -g NSAutomaticCapitalizationEnabled -bool false

# disable creation of .DS_Store on network/USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# disable sound effects
# - Settings -> Sound Effects -> Alert volume
defaults write -g com.apple.sound.beep.volume -float 0.0
# - Settings -> Sound Effects -> Play sound on startup
# - Uncomment this line to run. Requires sudo.
sudo nvram StartupMute=%01
# - Settings -> Sount Effects -> Play user interface sound effects
defaults write -g com.apple.sound.uiaudio.enabled -bool false
# - Settings -> Sound Effects -> Play feedback when volume is changed
defaults write -g com.apple.sound.beep.feedback -bool false
