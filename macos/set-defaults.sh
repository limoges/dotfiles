# The original idea (and a couple settings) were grabbed from:
#   https://github.com/mathiasbynens/dotfiles/blob/master/.macos
#
# Run ./set-defaults.sh and you'll be good to go.

# Use AirDrop over every interface.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Always open everything in Finder's list view.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show the ~/Library folder.
chflags nohidden ~/Library

# Set the Finder prefs for showing a few different volumes on the Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Hide Safari's bookmark bar.
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Set up Safari for development.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Disable open/close window animations
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# Disable animation when opening quicklook window
defaults write -g QLPanelAnimationDuration -float 0

# Accelerated window size adjustment for Cocoa Apps
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# Disable animation when opening info window in finder
defaults write com.apple.finder DisableAllAnimations -bool true

# Disable animations when you open an app from the dock
defaults write com.apple.dock launchanim -bool false

# Make all animations from Mission Control faster
defaults write com.apple.dock expose-animation-duration -float 0.1

# Disable the delay when hiding the dock
defaults write com.apple.Dock autohide-delay -float 0

# Remove standard delay when rendering a webpage
defaults write com.apple.Safari WebKitInitialTimedLayoutDelay 0.25
