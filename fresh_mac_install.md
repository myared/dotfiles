Great markdown reader: MacDown


### brew

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
```


### Work

```
# Need to download bindings
# Need to download colors
```

```
brew install tmux wemux rbenv rubybuild
brew tap neovim/homebrew-neovim	
brew install --HEAD neovim
```

Your current user account has been automatically added as a wemux host.

To give a user the ability to host wemux sessions add them to the
host_list array in:
  /usr/local/etc/wemux.conf

Either edit the file in your text editor of choice or run `wemux conf` to
open the file in your $EDITOR.


```
brew install tig  imagemagick    

brew install redis memcached node elixir erlang rbenv the_silver_searcher watchman rbenv-bundler elasticsearch mysql

brew install lynx irssi htop curl nmap
```

### OH MY ZSH

```
curl -L http://install.ohmyz.sh | sh
```

For .zshrc

```
ZSH_THEME="amuse"  
export UPDATE_ZSH_DAYS=13  
COMPLETION_WAITING_DOTS="true"  
plugins=(rails ruby git ember-cli)
```

https://github.com/powerline/fonts.git

### Mac Software

```
brew install Caskroom/cask/java
brew install Caskroom/cask/spectacle
brew install Caskroom/cask/chromium
brew install Caskroom/cask/dropbox
brew install Caskroom/cask/little-snitch
brew install Caskroom/cask/viscosity
brew install Caskroom/cask/slack
brew install Caskroom/cask/jiggler
brew install Caskroom/cask/firefox
```


### Improvements

1. Increase speed at which screen keys type
2. re-bind CAPS LOCK to Control key (1/2)
3. Dark nav bar



---

### normal minimum is 15 (225 ms)
defaults write -g InitialKeyRepeat -int 10
defaults read InitialKeyRepeat

### normal minimum is 2 (30 ms)
defaults write -g KeyRepeat -int 1


defaults write NSGlobalDomain KeyRepeat -int 0
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)


---

### SENSIBLE DEFAULTS

#####Enable repeat on keydown
defaults write -g ApplePressAndHoldEnabled -bool false

#####Use current directory as default search scope in Finder
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

#####Show Path bar in Finder
defaults write com.apple.finder ShowPathbar -bool true

#####Show Status bar in Finder
defaults write com.apple.finder ShowStatusBar -bool true

#####Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true

#####Enable AirDrop over Ethernet and on unsupported Macs running Lion
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

#####Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1

#####Set a shorter Delay until key repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 12

#####Enable Safari’s debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

#####Add a context menu item for showing the Web Inspector in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

#####Show the ~/Library folder
chflags nohidden ~/Library
