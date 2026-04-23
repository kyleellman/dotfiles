# Sets reasonable macOS defaults.
#
# Or, in other words, set shit how I like in macOS.
#
# The original idea (and a couple settings) were grabbed from:
#   https://github.com/mathiasbynens/dotfiles/blob/master/.macos
#
# Run ./set-defaults.sh and you'll be good to go.

# Disable press-and-hold for keys in favor of key repeat.
#defaults write -g ApplePressAndHoldEnabled -bool false

# Use AirDrop over every interface. srsly this should be a default.
#defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Always open everything in Finder's list view. This is important.
#defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show the ~/Library folder.
chflags nohidden ~/Library

# Set a really fast key repeat.
#defaults write NSGlobalDomain KeyRepeat -int 1

# Set the Finder prefs for showing a few different volumes on the Desktop.
#defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
#defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Run the screensaver if we're in the bottom-left hot corner.
#defaults write com.apple.dock wvous-bl-corner -int 5
#defaults write com.apple.dock wvous-bl-modifier -int 0

# Hide Safari's bookmark bar.
#defaults write com.apple.Safari ShowFavoritesBar -bool false

# Set up Safari for development.
#defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
#defaults write com.apple.Safari IncludeDevelopMenu -bool true
#defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
#defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
#defaults write NSGlobalDomain WebKitDeveloperExtras -bool true


# Disable Cmd+Shift+I browser shortcuts that open Mail app.
# Safari is sandboxed — requires Terminal to have Full Disk Access in System Settings > Privacy & Security.
defaults write com.apple.Safari NSUserKeyEquivalents -dict-add 'Email Link' '\0' 2>/dev/null || true
defaults write com.google.Chrome NSUserKeyEquivalents -dict-add 'Email Link' '\0'
defaults write org.mozilla.firefox NSUserKeyEquivalents -dict-add 'Email Link' '\0'
defaults write com.microsoft.edgemac NSUserKeyEquivalents -dict-add 'Email Page Location' '\0'

# Apply preference changes without rebooting.
killall cfprefsd

### TODO
# tap to click for track pad see com.apple.driver.AppleBluetoothMultitouch.trackpad and read com.apple.AppleMultitouchTrackpad clicking setting
# macbook caps lock to esc: https://github.com/geerlingguy/mac-dev-playbook/issues/22