#!/bin/bash

set -eufo pipefail

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# defaults write NSGlobalDomain AppleActionOnDoubleClick -string "Maximize"
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3
defaults write NSGlobalDomain AppleMenuBarVisibleInFullscreen -bool true
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
# defaults write NSGlobalDomain AppleWindowTabbingMode -string "fullscreen"
defaults write NSGlobalDomain com.apple.keyboard.fnState -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -bool true
defaults write NSGlobalDomain com.apple.trackpad.scaling -int 3

defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true

defaults write com.apple.assistant.backedup "Session Language" -string "ja-JP"
defaults write com.apple.assistant.backedup "Use device speaker for TTS" -int 3

defaults -currentHost write com.apple.controlcenter BatteryShowPercentage -bool true

defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -int 0
defaults write com.apple.dock autohide-time-modifier -float 0.5
# defaults write com.apple.dock contents-immutable -boolean false
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true
defaults write com.apple.dock expose-animation-duration -float 0.1
# defaults write com.apple.dock largesize -int 16
# defaults write com.apple.dock launchanim -bool true
# defaults write com.apple.dock magnification -bool false
# defaults write com.apple.dock mineffect -string "genie"
defaults write com.apple.dock minimize-to-application -bool true
# defaults write com.apple.dock mouse-over-hilite-stack -bool false
defaults write com.apple.dock mru-spaces -bool false
# defaults write com.apple.dock orientation -string "down"
defaults write com.apple.dock persistent-apps -array
# defaults write com.apple.dock position-immutable -boolean false
defaults write com.apple.dock showhidden -bool true
# defaults write com.apple.dock show-process-indicators -bool true
defaults write com.apple.dock show-recents -bool false
# defaults write com.apple.dock size-immutable -boolean false
defaults write com.apple.dock static-only -bool true
# defaults write com.apple.dock tilesize -int 48

defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
defaults write com.apple.finder _FXSortFoldersFirst -bool true
defaults write com.apple.finder _FXSortFoldersFirstOnDesktop -bool true
defaults write com.apple.finder AppleShowAllFiles -bool true
defaults write com.apple.finder CreateDesktop -bool false
# defaults write com.apple.finder DisableAllAnimations -bool false
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
# defaults write com.apple.finder FXEnableExtensionChangeWarning -bool true
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
defaults write com.apple.finder NewWindowTarget -string "PfHm"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true
defaults write com.apple.finder QuitMenuItem -bool true
# defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
# defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
# defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
defaults write com.apple.finder ShowPathbar -bool true
# defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.dock wvous-tl-corner -int 2
defaults write com.apple.dock wvous-tl-modifier -int 0
defaults write com.apple.dock wvous-tr-corner -int 4
defaults write com.apple.dock wvous-tr-modifier -int 0
defaults write com.apple.dock wvous-bl-corner -int 5
defaults write com.apple.dock wvous-bl-modifier -int 0

defaults write com.apple.menuextra.clock DateFormat -string "M\\U6708d\\U65e5(EEE) H:mm:ss"
defaults write com.apple.menuextra.clock ShowSeconds -bool true

defaults write com.apple.safari ShowFullURLInSmartSearchField -bool true
