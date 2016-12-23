##
# Sets reasonable macOS defaults.
#
# Some ideas were grabbed from: https://github.com/mathiasbynens/dotfiles/blob/master/.macos
#
# @author   René Milzarek <rene.milzarek@gmail.com>
# @ref      Zach Holman (https://github.com/holman/dotfiles)  
# @license  MIT license (https://github.com/neotreat/dotfiles/blob/master/LICENSE.md)
##

echo "Setting Mac OS defaults"

# Settings the dark UI mode through a custom apple script
osascript enable-dark-mode.scpt

# Use AirDrop over every interface. srsly this should be a default.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Always open everything in Finder's list view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show the ~/Library folder.
chflags nohidden ~/Library

# Run the screensaver if we're in the top-right hot corner.
defaults write com.apple.dock wvous-tr-corner -int 5
defaults write com.apple.dock wvous-tr-modifier -int 0

# Hide Safari's bookmark bar.
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Set up Safari for development.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
