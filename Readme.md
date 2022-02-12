# 1. Deactivate licences
- [ ] AlDentePro
- [ ] Alfred
- [ ] Better Touch Tool
- [ ] Recatngle Pro

# 2. Reinstall macOS
## 2.1 [Create a bootable installer](https://support.apple.com/en-us/HT201372)
- [ ] Download latest macOS via App Store
- [ ] Prepare > 14 GB USB flash drive
- [ ] Create bootable install media with createinstallmedia utility

## 2.2 [Prepare macOS for reinstall](https://support.apple.com/en-us/HT201065)
- [ ] Unpair Bluetooth devices
- [ ] Sign out of iCloud
- [ ] Sign out of iMessage
- [ ] Reset NVRAM > Shut down your Mac, then turn it on and immediately press and hold these four keys together: Option, Command, P, and R. Release the keys after about 20 seconds.

## 2.3 [Erase mac](https://support.apple.com/en-us/HT208496)
- [ ] Start up from macOS Recovery -> Turn on your Mac, then immediately press and hold these two keys until you see an Apple logo or other image: Command (⌘) and R.

## 2.4 [Reinstall macOS](https://support.apple.com/en-us/HT201372) 
- [ ] Restart while pressing and holding Option (Alt) ⌥ key

# 3. First Boot Setup
- [ ] Log into iCloud
- [ ] Log into App Store
- [ ] Install Xcode developer command line tools: `xcode-select --install`
- [ ] Source dotfiles from [github repo](github.com/calvyty) via [.dotfiles bare repository](https://www.atlassian.com/git/tutorials/dotfiles)
	- [ ] Attention! Use operator `dotfiles` instead of `git`!
	- [ ] Clone the repository: `git clone --bare https://github.com/calvyty/.dotfiles $HOME/.dotfiles`
	- [ ] Define 'dotfiles' alias in the current shell scope: `alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'`
	- [ ] Check out the bare repository to $HOME: `dotfiles checkout`
	- [ ] Set local flag to not show untracked files: `dotfiles config --local status.showUntrackedFiles no`
	- [ ] Pull all submodules: `dotfiles submodule update --init --recursive`
- [ ] exec .macos script: `.config/.macos`
- [ ] install Homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
- [ ] Install apps from Brewfile: `brew bundle install`
- [ ] Install Yoink extras from app preferences
- [ ] Install CotEditor extras from app preferences
- [ ] Install [PopClip Extensions](https://pilotmoon.com/popclip/extensions/)
	- [ ] Alfred
	- [ ] DeepL
	- [ ] Notes
	- [ ] Reminders
	- [ ] Stickies
	- [ ] yoink
- [ ] Install [Soulver Integrations](https://soulver.app/integrations/)
- [ ] Import Alfred preferences from `.config/Alfred.alfredpreferences`
- [ ] Install Alfred workflows
	- [ ] [Add to calendar](https://github.com/ruggi/calfred)
	- [ ] [Deep Contacts Search](https://github.com/alfredapp/deep-contacts-search-workflow)
	- [ ] [Reminders for Alfred](https://github.com/surrealroad/alfred-reminders)
	- [ ] [Search Notes](https://github.com/sballin/alfred-search-notes-app)
	- [ ] [Shortcuts](https://github.com/alfredapp/shortcuts-workflow)
	- [ ] [SoulverCore](https://github.com/cprecioso/alfred-soulvercore)
	- [ ] [Toggle Theme](https://github.com/mermaid/alfred-dark-mode-toggle)
	- [ ] [Window Switcher](https://github.com/alfredapp/window-switcher-workflow)
