## Configure OS preferences, shortcuts, etc
- [ ] Update to the latest OSX patch
- [ ] Set new system password
- [ ] Turn on hard drive encryption (Personal computer)
- [ ] Trackpad
	- [ ] Turn on 1 click touch
- [ ] Turn off global font smoothing (`System Preferences > General > (uncheck) Use LCD font smoothing when available`)
- [ ] Global Shortcuts (`System Preferences > Keyboard > Shortcuts`): 
  - [ ] `cmd shift +` for Window > Zoom
- [ ] Dock
	- [ ] Set to smallest possible size
	- [ ] Set to magnification
	- [ ] Move to left side
	- [ ] Check automatically show and hide
- [ ] Finder
	- [ ] Setup sidebar
	- [ ] Setup default arrangement view
		- Favorites: Desktop, Applications, Downloads, Macintosh. Hide Locations, Tags
		- Always open everything in Finder's list view. This is important. `defaults write com.apple.Finder FXPreferredViewStyle Nlsv`
		- Arrange by: Name
		- Sort by: Name
	- [ ] Turn on [view hidden files]
		- In Terminal
		- defaults write com.apple.finder AppleShowAllFiles YES
		- killall Finder
- [ ] Apple Developer Tools -- Xcode
	- [ ] run xcode-select --install
- [ ] Security (Personal computer)
	- [ ] Turn on FileVault disk encryption
	- [ ] Set to require password immediately
	- [ ] Turn on Firewall
	- [ ] [Encrypt.me](https://encrypt.me/) for VPN

## Applications
- [ ] [Adobe Creative Cloud](http://www.adobe.com/creativecloud.html)
	- [ ] Photoshop
	- [ ] Illustrator
- [ ] 1 Password
	- [ ] Go to App Store > Purchased and download all necessary
- [ ] [Slack](https://slack.com/downloads/osx) *(need .com download for control sharing support)
- [ ] [Spotify](https://spotify.com) *(need .com download for control sharing support)
- [ ] [Chrome](http://www.google.com/chrome/)
	- [ ] Set to confirm on `Cmd Q` for Quit
	- [ ] Log in and sync bookmarks and extensions
	- [ ] Install [user style for GitHub.com](https://gist.github.com/jglovier/2dff3507d9ee007f6ce4)
	- [ ] Log in to personal / work profiles, download extensions, configure 1Pass
- [ ] [GitKraken](https://gitkraken.com)
- [ ] [Postico](https://positico.com)
- [ ] [ImageOptim](https://imageoptim.com/) for optimizing ALL OF THE PNGS/JPGS
- [ ] [CleanMyMac](http://macpaw.com/cleanmymac) for keeping the machine so fresh and so clean
- [ ] [Kap](https://getkap.co/) for recording gifs (newer way)
- [ ] [Sophos](https://home.sophos.com/download-mac-anti-virus) for security (Personal)

## CLI
- [ ] Xcode > install command line tools
- [ ] Configure preferences (Personal)
	- [ ] Load `.bash_profile`
	- [ ] Load `.gitconfig` contents into global `~/.gitconfig`
	- [ ] Load `.gitignore_global`
- [ ] Install [Homebrew](https://brew.sh/)
- [ ] Install [oh my zsh](http://ohmyz.sh/)
	- [ ] Load `.zshrc`
	- [ ] Install [Powerline patched fonts](https://github.com/powerline/fonts/)
- [ ] Install Ruby
	- [ ] Install rbenv via Homebrew: `brew install rbenv`.
	- [ ] Download a version of Ruby via rbenv (e.g., `rbenv install 2.6.0`). 
	- [ ] Make it the global version of Ruby: `rbenv global 2.6.0`.
- [ ] Install misc dependencies
	- [ ] Install Git, Node, Yarn via Homebrew: `brew install git node yarn`
	- [ ] Install React via npm: `npm install -g create-react-app`
	- [ ] Install Sass, Jekyll: `gem install sass jekyll`.

## Visual Studio Code
- [ ] Enable `code-insiders` Terminal commands: from VSCode app, View>Command Palette> *Install Shell Commands*

## GitHub
- [ ] [Generate new SSH key](https://help.github.com/articles/generating-an-ssh-key/)
- [ ] [Generate an access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/) for Terminal to auth your GitHub account when 2FA is enabled.

## Work
- [ ] Clone work repo
	- [ ] Run through installation