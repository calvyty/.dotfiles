#!/bin/bash

# Close System Preferences to prevent interferences when applying settings
osascript -e 'tell application "System Preferences" to quit'

# Require admin authentication upfront
sudo -v

# Install Xcode Command Line Tools (CLT)
#xcode-select --install

# Install Homebrew
echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew analytics off

# Brew Taps
#echo "Tapping Third Party Repositories..."
#brew tap homebrew/cask-fonts

# Brew Formulae
#echo "Installing Brew Formulae..."
#brew install aria2
#brew install bat
#brew install btop
#brew install duf
#brew install emacs
#brew install emacs --HEAD
#brew install exa
#brew install fd
#brew install fish
#brew install fzf
#brew install htop
#brew install lsd
#brew install macvim
#brew install macvim --HEAD
#brew install mailtrackerblocker
#brew install micro
#brew install mist
#brew install mist --HEAD
#brew install mpv
#brew install mpv --HEAD
#brew install nnn
#brew install pandoc
#brew install ripgrep
#brew install romkatv/powerlevel10k/powerlevel10k
#brew install rtorrent
#brew install tmux
#brew install tmux --HEAD
#brew install transmission-cli
#brew install vim
#brew install vim --HEAD
#brew install zoxide

# Casks
echo "Installing Brew Casks..."
brew install --cask aldente
#brew install --cask alfred
#brew install --cask alt-tab
#brew install --cask amethyst
#brew install --cask amitv87-pip
#brew install --cask apparency
#brew install --cask appcleaner
#brew install --cask betterdisplay
#brew install --cask bettertouchtool
#brew install --cask blender
#brew install --cask blockblock
#brew install --cask clipy
#brew install --cask coleurs
#brew install --cask deepl
#brew install --cask devtoys
#brew install --cask easyfind
#brew install --cask emacs
#brew install --cask find-any-file
#brew install --cask flux
#brew install --cask font-b612
#brew install --cask font-b612-mono
#brew install --cask font-iosevka
#brew install --cask font-iosevka-nerd-font
#brew install --cask font-victor-mono
#brew install --cask font-victor-mono-nerd-font
#brew install --cask fsnotes
#brew install --cask gimp
#brew install --cask hammerspoon
#brew install --cask handbrake
#brew install --cask hex-fiend
#brew install --cask hiddenbar
#brew install --cask hyperkey
#brew install --cask iina
#brew install --cask imageoptim
#brew install --cask inkscape
#brew install --cask intel-power-gadget
#brew install --cask istat-menus
#brew install --cask karabiner-elements
#brew install --cask keka
#brew install --cask knockknock
#brew install --cask latest
#brew install --cask libreoffice
#brew install --cask lulu
brew install --cask maccy
#brew install --cask mactex
#brew install --cask marta
#brew install --cask macvim
#brew install --cask mediathekview
#brew install --cask meetingbar
#brew install --cask mi
#brew install --cask michaelvillar-timer
#brew install --cask monitorcontrol
#brew install --cask mos
#brew install --cask mouse-fix
#brew install --cask netiquette
#brew install --cask netnewswire
#brew install --cask nightowl
#brew install --cask obs
#brew install --cask obsidian
#brew install --cask only-switch
#brew install --cask onlyoffice
#brew install --cask onyx
#brew install --cask orion
#brew install --cask oversight
#brew install --cask pika
#brew install --cask pixel-picker
#brew install --cask pdf-images
#brew install --cask r
#brew install --cask ransomwhere
#brew install --cask rectangle-pro
#brew install --cask reikey
#brew install --cask shifty
#brew install --cask sidenotes
#brew install --cask shortcat
#brew install --cask shotcut
#brew install --cask shottr
#brew install --cask sioyek
#brew install --cask skim
#brew install --cask slidepilot
#brew install --cask sloth
#brew install --cask soulver
#brew install --cask spacelauncher
#brew install --cask spaceman
#brew install --cask stretchly
#brew install --cask suspicious-package
#brew install --cask taskexplorer
#brew install --cask textmate
#brew install --cask tomatobar
#brew install --cask transmission
#brew install --cask trex
#brew install --cask unicodechecker
#brew install --cask uninstallpkg
#brew install --cask visual-studio-code
#brew install --cask vlc
#brew install --cask vscodium
#brew install --cask whatsyoursign
#brew install --cask xcodes
#brew install --cask yippy
#brew install --cask zotero

# Brew cleanup 
echo "Cleaning up..."
brew update
brew upgrade
brew autoremove
brew cleanup -s
brew doctor

# macOS Settings
echo "Setting sensible macOS defaults..."

# General: Increase window resize speed for Cocoa applications
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# General: Always show scroll bars
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# General: Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# General: Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# General: Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# General: Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# General: Enable Full Keyboard Access (Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# General: Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Finder: Show icons for hard drives, servers, and removable media on the desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Finder: Show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Finder: Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: Show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: Show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Finder: Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Finder: Keep folders on top when sorting by name
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Finder: When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Finder: Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Finder: Show the ~/Library folder
chflags nohidden ~/Library && xattr -d com.apple.FinderInfo ~/Library

# Finder: Show the /Volumes folder
sudo chflags nohidden /Volumes

# Finder: Set Default Finder Location to Home Folder
defaults write com.apple.finder NewWindowTarget -string "PfLo" && \
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"

# Dock: Remove the auto-hiding Dock delay
defaults write com.apple.dock autohide-delay -float 0

# Dock: Remove the animation when hiding/showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0

# Dock: Set the icon size of Dock items to 36 pixels
defaults write com.apple.dock tilesize -int 36

# Dock: Only show active applications in the Dock
#defaults write com.apple.dock static-only -bool true

# Dock: Make icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

# Dock: Don’t show recent applications in Dock
defaults write com.apple.dock show-recents -bool false

# Dock: Show indicators for open applications
defaults write com.apple.dock show-process-indicators -bool true

# Dock: Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false && \
killall Dock

# Dock: Use the touchpad or mouse scroll wheel to interact with Dock items
defaults write com.apple.dock scroll-to-open -bool true && \
killall Dock

# Safari: Prevent Safari from opening ‘safe’ files automatically after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Safari: Enable the Develop menu and the Web Inspector in Safari
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

# Safari: Add a context menu item for showing the Web Inspector in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Safari: Use Backspace to Go Back a Page
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool true

# Mail: Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

# Mail: Show Attachments as Icons
defaults write com.apple.mail DisableInlineAttachmentViewing -bool true

# TextEdit: Create an Untitled Document at Launch
defaults write com.apple.TextEdit NSShowAppCentricOpenPanelInsteadOfUntitledFile -bool false

# TextEdit: Use plain text as default
defaults write com.apple.TextEdit RichText -int 0

# Launchpad: Reset Launchapd Layout
defaults write com.apple.dock ResetLaunchPad -bool true

# Activity Monitor: Show the main window when launching
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true

# Activity Monitor: Show all processes
defaults write com.apple.ActivityMonitor ShowCategory -int 0

# Restart Dock
echo "Restarting Dock..."
killall Dock

# Restart Finder
echo "Restarting Finder..."
killall Finder

# Fonts: Make SF Mono Fonts available for other apps
echo "Making SF-Mono-Font available system wide..."
cp -v /System/Applications/Utilities/Terminal.app/Contents/Resources/Fonts/SF-Mono-* ~/Library/Fonts

# Fonts: Install Powerlevel10k's recommended MesloLGS NF font
#echo "Installing MesloLGS NF font..."
#curl -Lo ~/Library/Fonts/MesloLGS_NF_Regular.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
#curl -Lo ~/Library/Fonts/MesloLGS_NF_Bold.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
#curl -Lo ~/Library/Fonts/MesloLGS_NF_Italic.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
#curl -Lo ~/Library/Fonts/MesloLGS_NF_Bold_Italic.ttf https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf

# Dotfiles: Install .zshrc configuration file
echo "Installing .zshrc..."
curl -Lo .zshrc https://raw.githubusercontent.com/calvyty/.dotfiles/main/.zshrc

# Dotfiles: Install .vimrc configuration file
echo "Installing .vimrc..."
curl -Lo .vimrc https://raw.githubusercontent.com/calvyty/.dotfiles/main/.vimrc

# Dotfiles: Install .tmux.conf configuration file
#echo "Installing .tmux.conf..."
#curl -Lo .tmux.conf https://raw.githubusercontent.com/calvyty/.dotfiles/main/.tmux.conf

# CotEditor: Install cot command-line tool
#echo "Installing cot command-line tool..."
#ln -s /Applications/CotEditor.app/Contents/SharedSupport/bin/cot /usr/local/bin/cot

# Setup: Post script actions
echo "Setup complete. Proceed to install the following Apps from the App Store:"
#echo "* Amphetamine, id: 937984704"
#echo "* Boop, id: 1518425043"
#echo "* CalcService, id: 899970159"
#echo "* Charmstone, id: 1563735522"
#echo "* CotEditor, id: 1024640650"
#echo "* Dato, id: 1470584107"
#echo "* Drafts, id: 1435957248"
#echo "* Esse, id: 1438921989"
#echo "* FreeScaler, id: 6443796196"
#echo "* GarageBand, id: 682658836"
#echo "* Gladys, id: 1382386877"
#echo "* iMovie, id: 408981434"
echo "* Keynote, id: 409183694"
#echo "* Microsoft Excel, id: 462058435"
#echo "* Microsoft PowerPoint, id: 462062816"
#echo "* Microsoft Word, id: 462054704"
#echo "* Notenik, id: 1465997984"
echo "* Numbers, id: 409203825"
#echo "* OpenIn, id: 1547147101"
#echo "* OwlOCR, id: 1499181666"
echo "* Pages, id: 409201541"
#echo "* PopClip, id: 445189367"
echo "* Reeder, id: 1529448980"
#echo "* Timery for Toggl, id: 1425368544"
#echo "* Tomito, id: 1526042938"
#echo "* Uni Detector, id: 1531249804"
#echo "* Userscripts, id: 1463298887"
#echo "* WordService, id: 899972312"
#echo "* Xcode, id: 497799835"
#echo "* Yoink, id: 457622435"
echo "Please restart the system for all changes to take effect..."
