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

# User Interface
#----------------

# Set the dark UI mode
defaults write "Apple Global Domain" AppleInterfaceStyle Dark
echo "> Please relog to enable the dark UI mode"

# Automatically hide the dock
defaults write com.apple.dock autohide 1

# Run the screensaver if we're in the top-right hot corner.
defaults write com.apple.dock wvous-tr-corner -int 5
defaults write com.apple.dock wvous-tr-modifier -int 0

# Always open everything in Finder's list view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show the ~/Library folder.
chflags nohidden ~/Library


# Keyboard
#----------

# Enable F1,F2, F3, etc. buttons instead of system functions
defaults write "Apple Global Domain" com.apple.keyboard.fnState 1


# Mouse / Trackpad
#------------------

# Enable right click on the trackpad with two fingers
defaults write "Apple Global Domain" ContextMenuGesture 1

# Enable right click on the right side of the magic mouse
defaults write com.apple.AppleMultitouchMouse MouseButtonMode TwoButton


# Network
#---------

# Use AirDrop over every interface. srsly this should be a default.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1


# Safari
#--------

# Hide Safari's bookmark bar.
defaults write com.apple.Safari ShowFavoritesBar -bool false

# Set up Safari for development.
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

echo ">> Finished"